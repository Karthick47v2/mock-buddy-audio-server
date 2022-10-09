<h1 align="center">Welcome to mock-buddy-audio-server 👋</h1>
<p>
  <a href="#" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
  </a>
</p>

> This repo contains audio processing service (microservice) for [Mock-Buddy](https://github.com/Karthick47v2/mock-buddy) application, uses Flask to build WebSocket and RESTful APIs, you can see project description [here](https://github.com/Karthick47v2/mock-buddy). This service is deployed on Heroku.

System will analyze speech and generate reports based on how good user's voice throughout the speech and his/her speech rate. This will highly affect the engagement of audience because if the speaker is not confident about their speech then audience engagement rate will decrease over time. Giving speech without fear and engaging speech instead of monotonous speech are keypoints for increasing audience engagement. And also, speaker needs to be aware of his speech rate will doing presentation/speech, because even if we practice carefully, they may speech at faster rate due to joy or slower rate due to fear.

Workflow is,

1. Detect speech rate
2. Detect speech confidence

- ### Speech rate

  Speech rate calculated by dividing number of words spoken by time taken. Recorded speech was transcribed using [Google Speech-to-Text API](https://cloud.google.com/speech-to-text) and spoken time was calculated accurately with help of [VAD](https://github.com/wiseman/py-webrtcvad).

- ### Speech confidence

  Speech confidence score is calculated using speech emotion classifier's output. CNN architecture used to built speech emotion classifier (aka recognition). Model trained on [RAVDESS](https://www.kaggle.com/datasets/uwrfkaggler/ravdess-emotional-speech-audio), [SAVEES](https://www.kaggle.com/datasets/ejlok1/surrey-audiovisual-expressed-emotion-savee), [TESS](https://www.kaggle.com/datasets/ejlok1/toronto-emotional-speech-set-tess) datasets. Training details are in this [repo](https://github.com/Karthick47v2/speech-emotion-classifier).

## Prerequisite

- FFmpeg, portaudio19-dev (For audio processing)
- Google Cloud account
- Set env variables (`GOOGLE_APPLICATION_CREDENTIALS` - path to google_credentials.json, `GOOGLE_CREDENTIALS` - content of file)
- Python 3.7 or newer

## Install

```
pip install -r requirements.txt
```

## Usage

```
python3 app.py
```

## Author

👤 **Karthick T. Sharma**

- Github: [@Karthick47v2](https://github.com/Karthick47v2)
- LinkedIn: [@Karthick47](https://linkedin.com/in/Karthick47)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/Karthick47v2/mock-buddy-audio-server/issues).

## Show your support

Give a ⭐️ if this project helped you!
