//import 'dart:html';

import 'package:audioplayers/audioplayers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:lottie/lottie.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:speakup/calssifiers/SoundClassifier.dart';
import 'package:speakup/internet/build_offline_builder.dart';
import 'package:speakup/models/SoundModel.dart';
import 'package:speakup/modules/Letters%20Voice/1-%D8%A3%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/Road%20map%20letters%20voices.dart';
import '../Home Screen/HomeScreen.dart';

class dog2 extends StatefulWidget {
  const dog2({Key? key}) : super(key: key);

  @override
  State<dog2> createState() => _dog2State();
}

class _dog2State extends State<dog2> {
  int idAniaml2 = 11;
  final audioFile = 'SavingAudios.aac';
  final DogSound = AudioPlayer();
  final UrlDS = 'gs://speakup-430fa.appspot.com/AUD-20230224-WA0036_.mp3';
  // final EmailUser =
  //     FirebaseAuth.instance.currentUser?.email; // get the email of the user.
  // animation
  bool startAnimation = false;

  SoundModel soundModel = SoundModel();

  bool _isLoading = false;

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

  void initRecorder() async {
    await soundModel.initRecorder();
    setState(() {});
  }

  SaveDataAnimal2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('idAniaml2', 11);
    print("Success");
  }

  double confidenceLevel = 0.0;

  SaveDataRoad() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('idRoad900', 900);
    print(
        "Successlllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll");
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: BuildOfflineBuilder(
          screen: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.orange,
                title: Text(
                  " صوت كلب",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              drawerScrimColor: Colors.yellow.withOpacity(0.7),
              drawer: Drawer(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
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
              body: SingleChildScrollView(
                child: Stack(
                  children: [
                    Column(
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
                              var Urlds = UrlDS;
                              await DogSound.play(UrlSource(
                                  "https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/AUD-20230224-WA0036_.mp3?alt=media&token=aa1c8abb-f06d-4d45-810b-a9a9ff5d03e4"));
                            }),
                          ),
                        ),
                        Bounce(
                            duration: Duration(milliseconds: 110),
                            child: Container(
                                child: Image(
                                    height: 350,
                                    image: AssetImage("images/dog.png"))),
                            onPressed: (() async {
                              var Urlds = UrlDS;
                              await DogSound.play(UrlSource(
                                  "https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/AUD-20230224-WA0036_.mp3?alt=media&token=aa1c8abb-f06d-4d45-810b-a9a9ff5d03e4"));
                            })),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            width: 250,
                            height: 50,
                            child: MaterialButton(
                                onPressed: (() async {
                                  if (soundModel.recorder.isRecording) {
                                    await handleAfterCloseAction();
                                  } else {
                                    // await soundModel.initRecorder();
                                    await soundModel.startRecording();
                                  }
                                  setState(() {});
                                }),
                                splashColor: Colors.red,
                                child: Row(
                                  children: [
                                    StreamBuilder<RecordingDisposition>(
                                        stream: soundModel.recorder.onProgress,
                                        builder: (context, snapshot) {
                                          final duration = snapshot.hasData
                                              ? snapshot.data!.duration
                                              : Duration.zero;
                                          String twoDigits(int n) =>
                                              n.toString();
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
                              padding:
                                  const EdgeInsets.only(left: 10.0, top: 10),
                              child: MaterialButton(
                                  color: Colors.grey[200],
                                  onPressed: () async{
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                           RoadMaplettersvoices(),
                                      ),
                                    );
                                    await SaveDataAnimal2();
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
                                              builder: (context) =>
                                                RoadMaplettersvoices(),
                                            ),
                                          );
                                          await SaveDataAnimal2();
                                        }
                                      },
                                      child: Text(
                                        'التالى ',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 25),
                                      )),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.yellow, width: 2),
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                    //Animation
                    if (startAnimation)
                      for (int i = 0; i < 3; i++)
                        Lottie.asset('lottie/party.json'), // Party Animation
                  ],
                ),
              ))),
    );
  }

  SoundClassifier soundClassifier = SoundClassifier();

  Future handleAfterCloseAction() async {
    await soundModel.stopRecordingAndGetPath();
    setState(() {
      _isLoading = true;
    });

    SoundClassifier soundClassifier = SoundClassifier();
    double result = await soundClassifier.predict_animal(className: 'dog');

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
