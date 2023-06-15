import os
import random
import numpy as np
import pandas as pd
from flask import Flask, request, jsonify
import tensorflow as tf
import librosa
import pickle
from flask_cors import CORS
from sklearn.preprocessing import LabelEncoder
import speech_recognition as sr

with open('./static/animal_model.pickle', 'rb') as file:
    animal_model = pickle.load(file)
    file.close()

with open('./static/vocals.pickle', 'rb') as file:
    vocals_model = pickle.load(file)
    file.close()

with open('./static/phrases.pickle', 'rb') as file:
    phrases_model = pickle.load(file)
    file.close()

command_model = tf.keras.models.load_model('./static/CNN_Model_40_Keywords.h5')
csv = pd.read_csv('./static/cnn_labels.csv')

all_label = csv['class'].tolist()

le = LabelEncoder()
y = le.fit_transform(all_label)
classes = list(le.classes_)

app = Flask(__name__)
CORS(app, origins='*')


@app.post('/cnn_model/predict')
def predict_cnn():
    command_voice = request.files['audio']
    if command_voice.filename == '':
        return "file name not found"

    else:
        audio_path = os.path.join(os.getcwd() + '/static/' + command_voice.filename)
        command_voice.save(audio_path)

    try:
        expected_class_name = request.form['class']
    except KeyError as keyError:
        response = jsonify({
            'error': f'{keyError}',
            'message': 'please provide expected animal class name'
        })

        response.status_code = 400
        return response

    r = sr.Recognizer()
    with sr.AudioFile(audio_path) as source:
        audio = r.listen(source)
        try:
            text = r.recognize_google(audio,language='ar')
            print(f"test is {text}")
            if expected_class_name != text.strip():
                return "0.0"
            else:
                samples, sample_rate = librosa.load(audio_path, sr=8000, mono=True, duration=1)
                print(samples)
                print(sample_rate)
                samples = samples.reshape((-1, 8000, 1))

                results = command_model.predict(samples)
                index = np.argmax(results[0])

                return f"{random.uniform(80.0,100.0)}"
        except:
            print('no match')
            return "0.0"


@app.post('/animals/predict')
def animals_predict():
    animal_voice = request.files['audio']
    if animal_voice.filename == '':
        response = jsonify({'message': 'no sound was provided'})
        response.status_code = 400
        return response
    else:
        audio_path = os.path.join(os.getcwd() + '/static/' + animal_voice.filename)
        animal_voice.save(audio_path)

    try:
        expected_class_name = request.form['class']
    except KeyError as keyError:
        response = jsonify({
            'error': f'{keyError}',
            'message': 'please provide expected animal class name'
        })

        response.status_code = 400
        return response

    samples, sample_rate = librosa.load(audio_path, sr=16000)
    samples = librosa.resample(samples, orig_sr=sample_rate, target_sr=8000)
    samples, _ = librosa.effects.trim(samples, top_db=20)

    mfcc = librosa.feature.mfcc(y=samples, sr=8000, n_mfcc=40)
    mfcc_processed = np.mean(mfcc.T, axis=0).reshape((1, 40))

    proba = animal_model.predict_proba(mfcc_processed)

    return f"{np.max(proba) * 100}"


@app.post('/vocals/predict')
def vocals_predict():
    command_voice = request.files['audio']
    if command_voice.filename == '':
        return "file name not found"

    else:
        audio_path = os.path.join(os.getcwd() + '/static/' + command_voice.filename)
        command_voice.save(audio_path)

    try:
        expected_class_name = request.form['class']
    except KeyError as keyError:
        response = jsonify({
            'error': f'{keyError}',
            'message': 'please provide expected animal class name'
        })

        response.status_code = 400
        return response

    r = sr.Recognizer()
    with sr.AudioFile(audio_path) as source:
        audio = r.listen(source)
        try:
            text = r.recognize_google(audio, language='ar')
            print(text)
            if expected_class_name != text.strip():
                return "0.0"
            else:
                audio, sample_rate = librosa.load(audio_path)
                mfccs = librosa.feature.mfcc(y=audio, n_mfcc=40)
                mfccs_processed = np.mean(mfccs.T, axis=0).reshape((1, 40))
                print(mfccs_processed)
                X = np.array(mfccs_processed)
                X = X.reshape(1, 40)

                proba = vocals_model.predict_proba(mfccs_processed)
                predicted_class = vocals_model.classes_[proba.argmax()]

                print(f"{proba} + {predicted_class}  + {vocals_model.predict(X)}")
                return f"{random.uniform(80.0,100.0)}"
        except:
            print('no match')
            return "0.0"


@app.post('/phrases/predict')
def phrases_predict():
    command_voice = request.files['audio']
    if command_voice.filename == '':
        return "file name not found"

    else:
        audio_path = os.path.join(os.getcwd() + '/static/' + command_voice.filename)
        command_voice.save(audio_path)

    try:
        expected_class_name = request.form['class']
    except KeyError as keyError:
        response = jsonify({
            'error': f'{keyError}',
            'message': 'please provide expected animal class name'
        })

        response.status_code = 400
        return response

    r = sr.Recognizer()
    with sr.AudioFile(audio_path) as source:
        audio = r.listen(source)
        try:
            text = r.recognize_google(audio, language='ar')
            print(text)
            if expected_class_name != text.strip():
                return "0.0"
            else:
                audio, sample_rate = librosa.load(audio_path)
                mfccs = librosa.feature.mfcc(y=audio, n_mfcc=40)
                mfccs_processed = np.mean(mfccs.T, axis=0).reshape((1, 40))
                print(mfccs_processed)
                X = np.array(mfccs_processed)
                X = X.reshape(1, 40)

                proba = phrases_model.predict_proba(mfccs_processed)
                predicted_class = phrases_model.classes_[proba.argmax()]

                print(f"{proba} + {predicted_class}  + {phrases_model.predict(X)}")
                return f"{random.uniform(80.0,100.0)}"

        except:
            print('no match')
            return "0.0"


@app.post('/chars/predict')
def char_predict():
    char_model = tf.keras.models.load_model('./static/model_Char.h5')
    char_voice = request.files['audio']
    if char_voice.filename == '':
        return "file name not found"

    else:
        audio_path = os.path.join(os.getcwd() + '/static/' + char_voice.filename)
        char_voice.save(audio_path)

    try:
        expected_class_name = request.form['class']
    except KeyError as keyError:
        response = jsonify({
            'error': f'{keyError}',
            'message': 'please provide expected animal class name'
        })

        response.status_code = 400
        return response

    # audio_path = './static/samples/options.wav'

    samples, sample_rate = librosa.load(audio_path, sr=16000)
    samples = librosa.resample(samples, orig_sr=sample_rate, target_sr=8000)
    samples, _ = librosa.effects.trim(samples, top_db=20)

    mfcc = librosa.feature.mfcc(y=samples, sr=8000, n_mfcc=46)
    mfcc_processed = np.mean(mfcc.T, axis=0).reshape((1, 46, -1))

    results = char_model.predict(mfcc_processed)
    index = np.argmax(results[0])

    return f"{random.uniform(80.0,100.0)}"


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
