"""Transcribe wav file"""

import librosa
import soundfile as sf

from .ggl.google_stt import GoogleSTT
from .ggl.vad import VAD


class AudioUtil:
    """Class holding all operations for processing audio"""

    def __init__(self):
        """Initialize all clients

        Args:
            file_name (str):name of wav file
        """
        self.stt = GoogleSTT()
        self.__speech_rate = []

    def change_audio_format(self, file_name):
        """Convert audio file to Google STT required format

        Args:
            file_name (str): audio file name
        """
        audio_file, s_rate = librosa.load(
            file_name, sr=self.stt.SAMPLE_RATE)

        audio_file = librosa.to_mono(audio_file)

        sf.write(file_name, audio_file,
                 s_rate, subtype='PCM_16')

    def detect_speech_rate(self, file_name):
        """Return speech rate in wpm (words per minute)

        Returns:
            float: speech rate in wpm
        """
        word_count = self.stt.get_word_count(file_name)
        vad_time = VAD(file_name).get_speech_time() + \
            1e-3  # to avoid division by zero error

        self.__speech_rate.append(word_count * 60 / vad_time)

    def get_speech_rate(self):
        s_len = 1 if len(self.__speech_rate) == 0 else len(self.__speech_rate)
        return sum(self.__speech_rate) / s_len
