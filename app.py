"""Process client requests"""

import os
import base64
import datetime

from dotenv import load_dotenv
from flask import Flask, json
from flask_socketio import SocketIO
from flask_cors import CORS

from src.audio_util import AudioUtil
from src.ser import SER

# create app instance with CORS
app = Flask(__name__)
cors = CORS(app)

# socket comm
socketio = SocketIO(app, cors_allowed_origins="*")

load_dotenv()

audio = AudioUtil()
ser = SER()

# SocketIO events


@socketio.on('audio_out')
def get_audio(request):
    """Process audio file sent from client"""

    # name as M_D_Y_H_M_S format in order to avoid overwriting issue
    file_name = datetime.datetime.now().strftime(
        '%m_%d_%Y_%H_%M_%S') + '.wav'

    if len(request.split(',')) > 1:

        with open(file_name, "wb") as wav_file:
            decode_string = base64.b64decode(request.split(',')[1])
            wav_file.write(decode_string)

        audio.change_audio_format(file_name)
        audio.detect_speech_rate(file_name)

        ser.predict(file_name)

    # delete existing file in storage
    if os.path.exists(file_name):
        os.remove(file_name)


@app.get('/audio_fb/')
def get_audio_fb():
    """Return feedback

    Returns:
        dict[str,str]: response
    """
    speech_rate = audio.get_speech_rate()
    ser_fb = ser.get_feedback()

    ser.reset()
    audio.reset()

    return {
        "wpm": speech_rate,
        "fb": json.dumps(ser_fb)
    }


# main thread
if __name__ == '__main__':

    # currently using eventlet server for socket production-env
    # socket will also take care of restful api calls
    socketio.run(app, port=5000, debug=True)
