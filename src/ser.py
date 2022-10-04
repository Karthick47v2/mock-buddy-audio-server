import librosa
import numpy as np

from tensorflow import keras


class SER:
    MAX_FRAME = 173
    N_FFT = 2048
    HOP_LENGTH = 512
    CHUNK_SIZE = 88200

    def __init__(self):
        self.__mel_model = keras.models.load_model('ser/mel_2048')
        self.__mfcc_model = keras.models.load_model('ser/mfcc_2048')
        self.__fb = []

    def load_wav(self, path, stop):
        # 22.05 kHz, 16 bit
        y, sr = librosa.load(path, mono=True)
        trimmed_y, idx = librosa.effects.trim(y, top_db=50)
        normalized_y = librosa.util.normalize(trimmed_y)
        y_chunks = [normalized_y[i:(i+stop)]
                    for i in range(0, len(normalized_y), stop)]
        return y_chunks, sr

    def extract_mfcc(self, y, sr, n_mfcc, n_fft, hop_length):
        mfcc = librosa.feature.mfcc(
            y=y, sr=sr, n_mfcc=n_mfcc, n_fft=n_fft, hop_length=hop_length)
        normalized_mfcc = librosa.util.normalize(mfcc)

        return normalized_mfcc

    def extract_mel(self, y, n_mel, n_fft, hop_length):
        stft = librosa.core.stft(y, n_fft=n_fft, hop_length=hop_length)

        mel = librosa.feature.melspectrogram(S=stft, n_mels=n_mel)
        mel_db = librosa.amplitude_to_db(abs(mel))
        normalized_mel = librosa.util.normalize(mel_db)

        return normalized_mel

    def add_padding(self, x, padding):
        padded_x = []

        for i in x:
            sh = len(i[0])

            if padding > 0 & sh < padding:
                x = padding - sh
                l_pad = x // 2
                r_pad = x - l_pad
                i = np.pad(i, pad_width=(
                    (0, 0), (l_pad, r_pad)), mode='constant')

            padded_x.append(i)

        return padded_x

    def preprocess(self, file_name):
        mfcc = []
        mel = []

        y_chunks, sr = self.load_wav(file_name, SER.CHUNK_SIZE)

        for y in y_chunks:
            if len(y) >= SER.N_FFT:
                ex_mfcc = self.extract_mfcc(
                    y, sr, 13, SER.N_FFT, SER.HOP_LENGTH)
                ex_mel = self.extract_mel(y, 128, SER.N_FFT, SER.HOP_LENGTH)

                mfcc.append(ex_mfcc)
                mel.append(ex_mel)

        return (np.array(self.add_padding(mfcc, SER.MAX_FRAME)),
                np.array(self.add_padding(mel, SER.MAX_FRAME)))

    def predict(self, file_name):

        x_mfcc, x_mel = self.preprocess(file_name)

        x_mfcc = x_mfcc.reshape(
            x_mfcc.shape[0], x_mfcc.shape[1], x_mfcc.shape[2], 1)
        x_mel = x_mel.reshape(
            x_mel.shape[0], x_mel.shape[1], x_mel.shape[2], 1)

        mel_y_preds = self.__mel_model.predict(x_mel)
        mfcc_y_preds = self.__mfcc_model.predict(x_mfcc)

        self.__fb.append(
            np.argmax(mfcc_y_preds * 0.7 + mel_y_preds * 0.3, axis=1).tolist())

    def get_feedback(self):
        return self.__fb
