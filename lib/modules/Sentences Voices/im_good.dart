import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_sound/public/flutter_sound_recorder.dart';
import 'package:lottie/lottie.dart';

import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:speakup/calssifiers/SoundClassifier.dart';
import 'package:speakup/internet/build_offline_builder.dart';
import 'package:speakup/models/SoundModel.dart';
import 'package:speakup/modules/Animals%20Voices/2-dog.dart';

import '../Home Screen/HomeScreen.dart';
import 'im_happy.dart';

class im_good extends StatefulWidget {
  const im_good({Key? key}) : super(key: key);

  @override
  State<im_good> createState() => _im_goodState();
}

class _im_goodState extends State<im_good> {
  int idASen11 = 210;
  double confidenceLevel = 0.0;
  SoundModel soundModel = SoundModel();
  bool _isLoading = false;
  final audioFile = 'SavingAudios.aac';
  final IGoodSound = AudioPlayer();
  final UrlIG1 = 'gs://speakup-430fa.appspot.com/انا كويس.mp3'; // file location
  // final EmailUser =
  //     FirebaseAuth.instance.currentUser?.email; // get the email of the user.

  @override
  void initState() {
    initRecorder();
    super.initState();
  }

  @override
  void dispose() {
    soundModel.recorder.closeRecorder();
    super.dispose();
  }

  Future initRecorder() async {
    await soundModel.initRecorder();
    setState(() {});
  }

  SaveDataSen11() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('idSen11', 210);
    print("Success");
  }

// animation
  bool startAnimation = false;

  @override
  Widget build(BuildContext context) {
    // Audio

    return WillPopScope(
      onWillPop: () async => false,
      child: BuildOfflineBuilder(
        screen: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.orange,
            title: Text(
              "أنا كويس",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          drawerScrimColor: Colors.yellow.withOpacity(0.7),
          drawer: Drawer(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                  ),
                  accountName: Text('Speak Up'),
                  accountEmail: Text(''),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('images/baby.jpg'),
                  ),
                ),
                ListTile(
                  title: Text("الصفحة الرئيسية"),
                  leading: Icon(Icons.home),
                  onTap: () {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen2(),
                        ),
                      );
                    }
                  },
                )
              ],
            ),
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 50, right: 50),
                      child: ListTile(
                        title: Text(
                          "قول الصوت ده",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        leading: Icon(
                          Icons.contactless,
                          size: 50,
                          color: Colors.orange,
                        ),
                        onTap: (() async {
                          var Urlig1 = UrlIG1;
                          await IGoodSound.play(UrlSource(
                              'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%A7%D9%86%D8%A7%20%D9%83%D9%88%D9%8A%D8%B3.mp3?alt=media&token=69ad56a0-55fa-4d5f-93a3-2e0a4d0e51ff'));
                        }),
                      ),
                    ),
                    Bounce(
                      duration: Duration(milliseconds: 110),
                      onPressed: () async {
                        var Urlig1 = UrlIG1;
                        await IGoodSound.play(UrlSource(
                            'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%A7%D9%86%D8%A7%20%D9%83%D9%88%D9%8A%D8%B3.mp3?alt=media&token=69ad56a0-55fa-4d5f-93a3-2e0a4d0e51ff'));
                      },
                      child: Container(
                          child: Image(
                              height: 350,
                              image: AssetImage("images/أنا كويس.webp"))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        width: 250,
                        height: 50,
                        child: MaterialButton(
                            onPressed: () async {
                              if (soundModel.recorder.isRecording) {
                                await handleAfterCloseAction();
                              } else {
                                // await soundModel.initRecorder();
                                await soundModel.startRecording();
                              }
                              setState(() {});
                            },
                            splashColor: Colors.red,
                            child: Row(
                              children: [
                                StreamBuilder<RecordingDisposition>(
                                    stream: soundModel.recorder.onProgress,
                                    builder: (context, snapshot) {
                                      final duration = snapshot.hasData
                                          ? snapshot.data!.duration
                                          : Duration.zero;
                                      String twoDigits(int n) => n.toString();
                                      final twoDigitsMinutes = twoDigits(
                                          duration.inMinutes.remainder(60));
                                      final twoDigitsSeconds = twoDigits(
                                          duration.inSeconds.remainder(60));

                                      return Text(
                                        '$twoDigitsMinutes:$twoDigitsSeconds',
                                        style: const TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                        ),
                                      );
                                    }),
                                Icon(
                                  Icons.record_voice_over,
                                  size: 35,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'يلا قوول ',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30), //record button
                                ),
                              ],
                            )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            " % ",
                            style: TextStyle(fontSize: 25),
                          ),
                          Text(
                            '${confidenceLevel.toStringAsFixed(2)}',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "نسبة التطابق ",
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 10),
                          child: MaterialButton(
                                color: Colors.grey[200],
                                onPressed: () async{
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => im_happy(),
                                    ),
                                  );
                                  await SaveDataSen11();
                                },
                                child: Text("تخطى",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15))),
                        ),
                        // button (next) will visible when animation started
                        if (startAnimation)
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 155,
                            ),
                            child: Container(
                              width: 90,
                              height: 45,
                              child: MaterialButton(
                                  splashColor: Colors.red,
                                  onPressed: () async {
                                    {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => im_happy(),
                                        ),
                                      );
                                      await SaveDataSen11();
                                    }
                                  },
                                  child: Text(
                                    'التالى ',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  )),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.yellow, width: 2),
                                color: Colors.orange,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),

              // animation
              if (startAnimation)
                for (int i = 0; i < 3; i++)
                  Lottie.asset('lottie/party.json'), // Party Animation
            ],
          ),
        ),
      ),
    );
  }

  Future handleAfterCloseAction() async {
    await soundModel.stopRecordingAndGetPath();
    setState(() {
      _isLoading = true;
    });

    SoundClassifier soundClassifier = SoundClassifier();
    double result = await soundClassifier.predict_phrase(className: 'انا كويس');

    if (result < 50) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('قم بالمحاولة مجددا'),
      ));
    } else if (result == 0.0) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('لم يتم التعرف علي الصوت'),
      ));
    } else {
      // animation
      setState(() {
        startAnimation = true;
      });

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('احسنت'),
      ));
    }

    setState(() {
      confidenceLevel = result;
      _isLoading = false;
    });
  }
}
