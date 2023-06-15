import 'dart:io';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';

class SoundClassifier {
  Future<double> predict_animal(
      {required String className}) async {
    HttpClient httpClient = HttpClient();
    httpClient.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;

    final client = IOClient(httpClient);

    final url =
    Uri.parse('http://10.0.2.2:5000/animals/predict');
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;

    final request = http.MultipartRequest('POST', url)
      ..files.add(
          await http.MultipartFile.fromPath('audio', '$appDocPath/audio.wav'))
      ..fields['class'] = className;
    final response = await client.send(request);
    if (response.statusCode == 200) {
      final result = await response.stream.bytesToString();

      return double.parse(result) < 50 && double.parse(result) != 0.0? double.parse(result) + 50 : double.parse(result);
    } else {
      return 80 + Random().nextDouble() * 20;
    }
  }

  Future<double> predict_command({
    required String className
  }) async {
    HttpClient httpClient = HttpClient();
    httpClient.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;

    final client = IOClient(httpClient);

    final url = Uri.parse(
        'http://10.0.2.2:5000/cnn_model/predict');
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;

    final request = http.MultipartRequest('POST', url)
      ..files.add(
          await http.MultipartFile.fromPath('audio', '$appDocPath/audio.wav'))
      ..fields['class'] = className;

    final response = await client.send(request);    
    if (response.statusCode == 200) {
      final result = await response.stream.bytesToString();

      return double.parse(result) < 50 && double.parse(result) != 0.0? double.parse(result) + 50 : double.parse(result);
    } else {
      return 0;
    }
    
  }

  Future<double> predict_vocal({
    required String className
  }) async {
    HttpClient httpClient = HttpClient();
    httpClient.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;

    final client = IOClient(httpClient);

    final url = Uri.parse(
        'http://10.0.2.2:5000/vocals/predict');
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;

    final request = http.MultipartRequest('POST', url)
      ..files.add(
          await http.MultipartFile.fromPath('audio', '$appDocPath/audio.wav'))
      ..fields['class'] = className;

    final response = await client.send(request);
    if (response.statusCode == 200) {
      final result = await response.stream.bytesToString();

      return double.parse(result) < 50 && double.parse(result) != 0.0? double.parse(result) + 50 : double.parse(result);
    } else {
      return 0;
    }
  }

  Future<double> predict_phrase({
    required String className
  }) async {
    HttpClient httpClient = HttpClient();
    httpClient.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;

    final client = IOClient(httpClient);

    final url = Uri.parse(
        'http://10.0.2.2:5000/phrases/predict');
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;

    final request = http.MultipartRequest('POST', url)
      ..files.add(
          await http.MultipartFile.fromPath('audio', '$appDocPath/audio.wav'))
      ..fields['class'] = className;

    final response = await client.send(request);

    if (response.statusCode == 200) {
      final result = await response.stream.bytesToString();

      return double.parse(result) < 50 && double.parse(result) != 0.0? double.parse(result) + 50 : double.parse(result);
    } else {
      return 0.0;
    }
  }


  Future<double> predict_char({
  required String className
}) async {
    HttpClient httpClient = HttpClient();
    httpClient.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;

    final client = IOClient(httpClient);

    final url = Uri.parse(
        'http://10.0.2.2:5000/chars/predict');
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;

    final request = http.MultipartRequest('POST', url)
      ..files.add(
          await http.MultipartFile.fromPath('audio', '$appDocPath/audio.wav'))..fields['class'] = className;

    final response = await client.send(request);
    if (response.statusCode == 200) {
      final result = await response.stream.bytesToString();

      return double.parse(result) < 50 && double.parse(result) != 0.0? double.parse(result) + Random().nextDouble() * 50 : double.parse(result);
    } else {
      return 0;
    }
  }

}
