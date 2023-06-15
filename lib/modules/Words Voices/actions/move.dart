import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:lottie/lottie.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:speakup/calssifiers/SoundClassifier.dart';
import 'package:speakup/internet/build_offline_builder.dart';
import 'package:speakup/models/SoundModel.dart';
import 'package:speakup/modules/Home%20Screen/HomeScreen.dart';
import 'package:speakup/modules/Sentences%20Voices/Road%20map%20sentences%20voices.dart';
import 'package:speakup/modules/Words%20Voices/actions/open.dart';

class move extends StatefulWidget {
  const move({Key? key}) : super(key: key);

  @override
  State<move> createState() => _moveState();
}

class _moveState extends State<move> {
  DateTime? _lastPressedAt;
  int id107 = 107;
  //final ASound = AudioPlayer();
  final recorder = FlutterSoundRecorder();
  final audioFile = 'SavingAudios.aac';
  final MoveSound = AudioPlayer();
  final urlLE2 = "gs://speakup-430fa.appspot.com/تحريك.mp3";
  bool isRecorderReady = false;



  double confidenceLevel = 0.0;
  SoundModel soundModel = SoundModel();


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


  SaveData107() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('id107', 107);
    print("Success");
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
                  "  تحريك",
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
                  child: WillPopScope(
                onWillPop: _onWillPop,
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
                              var urlle2 = urlLE2;
                              await MoveSound.play(UrlSource(
                                  "https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AA%D8%AD%D8%B1%D9%8A%D9%83.mp3?alt=media&token=9b2d12b5-3c70-4509-a4bb-e216353decf3"));
                            }),
                          ),
                        ),
                        Bounce(
                            duration: Duration(milliseconds: 110),
                            child: Container(
                                child: Image(
                                    height: 350,
                                    image: AssetImage("images/تحريك.jfif"))),
                            onPressed: (() async {
                              var urlle2 = urlLE2;
                              await MoveSound.play(UrlSource(
                                  "https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AA%D8%AD%D8%B1%D9%8A%D9%83.mp3?alt=media&token=9b2d12b5-3c70-4509-a4bb-e216353decf3"));
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
                                "${confidenceLevel.toStringAsFixed(2)}",
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
                                        builder: (context) => open(),
                                      ),
                                    );
                                    await SaveData107();
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
                                              builder: (context) => open(),
                                            ),
                                          );
                                          await SaveData107();
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
                    // animation
                    if (startAnimation)
                      for (int i = 0; i < 3; i++)
                        Lottie.asset('lottie/party.json'), // Party Animation
                  ],
                ),
              )))),
    );
  }

  Future<bool> _onWillPop() async {
    final currentTime = DateTime.now();

    // If last pressed time is null or if it's been more than 2 seconds since the last press,
    // update the last pressed time and return false to allow the back button press to be handled normally.
    if (_lastPressedAt == null ||
        currentTime.difference(_lastPressedAt!) > const Duration(seconds: 2)) {
      _lastPressedAt = currentTime;

      // Show a message to the user indicating that they need to press back again to exit.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Center(
              child: Text(
            'اضغط مرة اخرى للخروج',
            style: TextStyle(fontSize: 17),
          )),
          duration: Duration(seconds: 2),
        ),
      );

      return false;
    }

    // If the back button is pressed twice within 2 seconds, exit the entire app.
    await SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
    return true;
  }

  bool _isLoading = false;
  // animation
  bool startAnimation = false;
  Future handleAfterCloseAction() async {
    await soundModel.stopRecordingAndGetPath();
    setState(() {
      _isLoading = true;
    });

    SoundClassifier soundClassifier = SoundClassifier();
    double result = await soundClassifier.predict_command(className: 'تحريك');

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