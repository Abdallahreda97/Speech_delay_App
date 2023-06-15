import 'dart:io';

import 'package:flutter_sound/flutter_sound.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class SoundModel {
  final _recorder = FlutterSoundRecorder();
  bool _isRecorderReady = false;

  FlutterSoundRecorder get recorder {
    return _recorder;
  }

  bool get isRecorderReady {
    return _isRecorderReady;
  }

  Future initRecorder() async {
    final status = await Permission.microphone.request();
    if (status != PermissionStatus.granted) {
      throw 'Microphone permission not granted';
    }
    await _recorder.openRecorder();
    _recorder.setSubscriptionDuration(
      const Duration(milliseconds: 500),
    );
    // _recorder.setSubscriptionDuration(
    //   const Duration(microseconds: 125),
    // );
    _isRecorderReady = true;
  }

  Future startRecording() async {
    if (!_isRecorderReady) return;
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;
    await _recorder.startRecorder(
        toFile: '$appDocPath/audio.wav', codec: Codec.pcm16WAV);

    _recorder.setSubscriptionDuration(Duration(milliseconds: 125));
    await _recorder.startRecorder(
        toFile: '$appDocPath/audio.wav',
        codec: Codec.pcm16WAV,
        sampleRate: 8000,
        numChannels: 1);
  }

  Future stopRecording() async {
    if (!_isRecorderReady) return;
    final path = await _recorder.stopRecorder();
    return path;
  }

  handleElementsOnClose() async {
    _recorder.closeRecorder();
  }

  Future<String> stopRecordingAndGetPath() async {
    var path = await stopRecording();
    print(path);
    return path;
  }
}
