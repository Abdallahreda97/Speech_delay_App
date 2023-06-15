import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:speakup/internet/build_offline_builder.dart';

import '../Animals Voices/Road map Animals Voices.dart';
import '../Home Screen/HomeScreen.dart';

class finalCelebration extends StatefulWidget {
  const finalCelebration({Key? key}) : super(key: key);

  @override
  State<finalCelebration> createState() => _finalCelebrationState();
}

class _finalCelebrationState extends State<finalCelebration> {
  DateTime? _lastPressedAt;
  int idScreen400 = 400;
  SaveDataScreen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('idScreen400', 400);
    print(
        "Successhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
        onWillPop: () async => false,
        child: BuildOfflineBuilder(
          screen: Directionality(
              textDirection: TextDirection.rtl,
              child: Scaffold(
                  backgroundColor: Colors.orange,
                  body: WillPopScope(
                    onWillPop: _onWillPop,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30)),
                            color: Colors.white,
                          ),
                          width: size.width,
                          height: size.height,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0, left: 8.0, right: 8),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image:
                                            AssetImage("images/cut final.jpg"),
                                        fit: BoxFit.fill,
                                      )),
                                      child: Column(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(30),
                                                topRight: Radius.circular(
                                                    30)), //add border radius
                                            child: Image.asset(
                                                "images/final page.jpg"),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "مبروووووك",
                                            style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold,
                                              shadows: [
                                                Shadow(
                                                    color: Colors.black,
                                                    blurRadius: 3)
                                              ],
                                            ),
                                          ),
                                          Text(
                                            "أحسنت عملا لقد إجتزت جميع المراحل.",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Text(
                                            "أنت الآن قادر على التكلم بشكل أفضل .",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Text(
                                            "تكلم كثيرا مع من تحبهم باستمرار ",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Text(
                                            "فى الخطوةالقادمة :\nارشح لك الذهاب إلى الصفحة الرئيسة والإستماع  إلى النطق الصحيح للأصوات \nكما ستجد فيديوهات تعليمية مميزة ستساعد الطفل على معرفة عدد كبير من الكلمات الممزوجة بالمتعة ",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            'نتمنى لكم دوام الصحة والعافية',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
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
                                                              HomeScreen2(),
                                                        ),
                                                      );
                                                      await SaveDataScreen();
                                                    }
                                                  },
                                                  child: Text(
                                                    'التالى',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  )),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Colors.orange,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ))),
                    ),
                  ))),
        ));
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
}
