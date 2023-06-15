import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:speakup/internet/build_offline_builder.dart';
import 'package:speakup/modules/Animals%20Voices/1-cat.dart';
import 'package:speakup/modules/Animals%20Voices/Road%20map%20Animals%20Voices.dart';

import '../Home Screen/HomeScreen.dart';

class AdviceScreen extends StatefulWidget {
  const AdviceScreen({Key? key}) : super(key: key);

  @override
  State<AdviceScreen> createState() => _AdviceScreenState();
}

class _AdviceScreenState extends State<AdviceScreen> {
  int id300 = 300;
  // late Timer _timer;
  // late SharedPreferences _prefs;
  // bool _canOpenApp = true;

  // @override
  // void initState() {                   timer elmohr
  //   super.initState();
  //   _initPrefs();
  //   _startTimer();
  // }

  // void _initPrefs() async {
  //   _prefs = await SharedPreferences.getInstance();
  //   if (_prefs.containsKey('lastClosedTime')) {
  //     final lastClosedTimeMillis = _prefs.getInt('lastClosedTime');
  //     final lastClosedTime = DateTime.fromMillisecondsSinceEpoch(
  //         lastClosedTimeMillis ?? 0); // use 0 if null
  //     final now = DateTime.now();
  //     final durationSinceLastClosed = now.difference(lastClosedTime);
  //     if (durationSinceLastClosed < Duration(hours: 8)) {
  //       setState(() {
  //         _canOpenApp = false;
  //       });
  //     }
  //   }
  // }

  // void _startTimer() {
  //   const twoHours = const Duration(milliseconds: 2);
  //   _timer = Timer(twoHours, () {
  //     _closeApp();
  //   });
  // }

  // void _closeApp() {
  //   _timer.cancel();
  //   _saveLastClosedTime();
  //   setState(() {
  //     _canOpenApp = false;
  //   });
  //   SystemNavigator.pop();
  // }

  SaveDataAdvice() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('id300', 300);
    print("Successvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv");
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: BuildOfflineBuilder(
              screen: Scaffold(
                backgroundColor: Colors.orange,
                body: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        color: Colors.white,
                      ),
                      width: double.infinity,
                      height: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                            child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight:
                                      Radius.circular(30)), //add border radius
                              child: Image.asset("images/baby.jpg"),
                            ),
                            Text(
                                '\n هذا التطبيق مخصص للأطفال المصابين بتأخر النطق او غير القادرين على التحدث بشكل سليم.',
                                style: TextStyle(fontSize: 18)),
                            Text(
                                '\nيجب التأكد بأن الطفل ذو سمع وإدراك وذكاء جيد إذا لم يتوفر أى من السابق يجب التوجه الى طبيب مختص .\n',
                                style: TextStyle(fontSize: 18)),
                            Text(
                                '  هذا التطبيق مبنى على أساس علمى\n بمساعدة عدد من الأطباء المتخصصين فى علاج هذا المرض \nمن خلال لعبة تتكون من عدد مختلف من المراحل الذكية اللتى تعمل على تطور النطق لدى الطفل.\n',
                                style: TextStyle(fontSize: 18)),
                            Text(
                              'نتمنى لكم دوام الصحة والعافية',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            //             _canOpenApp
                            // ? Text('Welcome to my app!')                     timer elmohr
                            // : Text('You cannot open the app yet.'),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                width: double.infinity,
                                height: 45,
                                child: MaterialButton(
                                    splashColor: Colors.red,
                                    onPressed: () async {
                                      {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                RoadMapAnimalVoices(),
                                          ),
                                        );
                                      }
                                      await SaveDataAdvice();
                                    },
                                    child: Text(
                                      'لنبدأ الإثارة ',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.orange,
                                )),
                          ],
                        )),
                      )),
                ),
              ),
            )));
  }

  // @override
  // void dispose() {
  //   _timer.cancel();
  //   _saveLastClosedTime();
  //   super.dispose();
  // }
  // timer elmohr
  // void _saveLastClosedTime() {
  //   final now = DateTime.now();
  //   _prefs.setInt('lastClosedTime', now.millisecondsSinceEpoch);
  // }
}
