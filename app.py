"""Process client requests"""

import os
import datetime

from flask import Flask, request
from flask_cors import CORS

from src.audio_util import AudioUtil

# create app instance with CORS
app = Flask(__name__)
cors = CORS(app)


@app.post('/audio_out/')
def get_audio():
    """Process audio file sent from client

    Returns:
        dict[str,str]: response
    """
    try:
        audio_file = request.files['file']
        # name as M_D_Y_H_M_S format in order to avoid overwriting issue
        audio_file = AudioUtil(file_name=datetime.datetime.now().strftime(
            '%m_%d_%Y_%H_%M_%S') + '.wav')

        audio_file.change_audio_format(audio_file)

        # upload audio to ggl storage (mandatory for transcribing long audio (> 1mins))
        audio_file.storage.upload_to_bucket(audio_file.file_name)

        speech_rate = audio_file.get_speech_rate()

        # delete existing file in storage (local and cloud)
        audio_file.storage.delete_file(audio_file.file_name)
        if os.path.exists(audio_file.file_name):
            os.remove(audio_file.file_name)

        return {
            'status': 200,
            'wpm': speech_rate
        }
    # pylint: disable=broad-except
    except Exception:
        return {
            'status': 400
        }


# main thread
if __name__ == '__main__':
    app.run(port=5000)
