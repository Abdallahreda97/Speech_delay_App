import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:speakup/internet/build_offline_builder.dart';
import 'package:speakup/modules/Sentences%20Voices/good%20by.dart';
import 'package:speakup/modules/Sentences%20Voices/good%20evening.dart';
import 'package:speakup/modules/Sentences%20Voices/good%20morning.dart';
import 'package:speakup/modules/Sentences%20Voices/how%20are%20you.dart';
import 'package:speakup/modules/Sentences%20Voices/i_want_to_go_out.dart';
import 'package:speakup/modules/Sentences%20Voices/i_want_to_play.dart';
import 'package:speakup/modules/Sentences%20Voices/im_good.dart';
import 'package:speakup/modules/Sentences%20Voices/im_happy.dart';
import 'package:speakup/modules/Sentences%20Voices/im_sad.dart';
import 'package:speakup/modules/Sentences%20Voices/im_sleepy.dart';
import 'package:speakup/modules/Sentences%20Voices/im_sorry.dart';
import 'package:speakup/modules/Sentences%20Voices/im_thirsty.dart';
import 'package:speakup/modules/Sentences%20Voices/love.dart';
import 'package:speakup/modules/Sentences%20Voices/welcome.dart';

import '../Final Celebration/Finalcelebration.dart';
import 'hungry.dart';

class RoadMapSentencesVoices extends StatefulWidget {
  const RoadMapSentencesVoices({Key? key}) : super(key: key);

  @override
  State<RoadMapSentencesVoices> createState() => _RoadMapSentencesVoicesState();
}

class _RoadMapSentencesVoicesState extends State<RoadMapSentencesVoices> {
  DateTime? _lastPressedAt;
  var Sentences1;
  var Sentences2;
  var Sentences3;
  var Sentences4;
  var Sentences5;
  var Sentences6;
  var Sentences7;
  var Sentences8;
  var Sentences9;
  var Sentences10;
  var Sentences11;
  var Sentences12;
  var Sentences13;
  var Sentences14;
  var Sentences15;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: BuildOfflineBuilder(
          screen: Scaffold(
              backgroundColor: Colors.orange,
              appBar: AppBar(
                automaticallyImplyLeading: false,
                elevation: 0,
                backgroundColor: Colors.orange,
                title: Center(
                    child: Text(
                  "خريطة اللعبة",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
              ),
              body: WillPopScope(
                  onWillPop: _onWillPop,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage("images/background for road map.jpg"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        color: Colors.white,
                      ),
                      width: double.infinity,
                      height: double.infinity,
                      child: SingleChildScrollView(
                          child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 3),
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey,
                                ),
                                height: 100,
                                width: 150,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 35, left: 5),
                                child: Text(
                                  "أصوات الحيوانات",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                margin: EdgeInsets.only(top: 65, left: 60),
                                child: CircleAvatar(
                                  child: Icon(
                                    Icons.done,
                                    color: Colors.black,
                                  ),
                                  radius: 12,
                                  backgroundColor: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 50,
                            child: VerticalDivider(
                              color: Colors.black,
                              width: 30,
                              thickness: 1,
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 3),
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey,
                                ),
                                height: 100,
                                width: 150,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 35, left: 10),
                                child: Text(
                                  "أصوات الحروف",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                margin: EdgeInsets.only(top: 65, left: 60),
                                child: CircleAvatar(
                                  child: Icon(
                                    Icons.done,
                                    color: Colors.black,
                                  ),
                                  radius: 12,
                                  backgroundColor: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 50,
                            child: VerticalDivider(
                              color: Colors.black,
                              width: 30,
                              thickness: 1,
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 3),
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey,
                                ),
                                height: 100,
                                width: 150,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 35, left: 10),
                                child: Text(
                                  "أصوات الكلمات",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                margin: EdgeInsets.only(top: 65, left: 60),
                                child: CircleAvatar(
                                  child: Icon(
                                    Icons.done,
                                    color: Colors.black,
                                  ),
                                  radius: 12,
                                  backgroundColor: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 50,
                            child: VerticalDivider(
                              color: Colors.black,
                              width: 30,
                              thickness: 1,
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 3),
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.red,
                                ),
                                height: 100,
                                width: 150,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 35, left: 20),
                                child: Text(
                                  "أصوات الجمل",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                margin: EdgeInsets.only(top: 65, left: 60),
                                child: CircleAvatar(
                                  child: Text(
                                    "4",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  radius: 12,
                                  backgroundColor: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 220),
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
                                          builder: (context) => hungry(),
                                        ),
                                      );
                                      // GetDataSen1();
                                      // GetDataSen2();
                                      // GetDataSen3();
                                      // GetDataSen4();
                                      // GetDataSen5();
                                      // GetDataSen6();
                                      // GetDataSen7();
                                      // GetDataSen8();
                                      // GetDataSen9();
                                      // GetDataSen10();
                                      // GetDataSen11();
                                      // GetDataSen12();
                                      // GetDataSen13();
                                      // GetDataSen14();
                                      // GetDataSen15();
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
                      )),
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

  // GetDataSen1() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   Sentences1 = prefs.getInt("idSen1");
  //   print(Sentences1);
  //   if (Sentences1 == 200) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => good_by(),
  //       ),
  //     );
  //   } else {
  //     print("No saved data for you");
  //   }
  // }

  // GetDataSen2() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   Sentences2 = prefs.getInt("idSen2");
  //   print(Sentences2);
  //   if (Sentences2 == 201) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => good_morning(),
  //       ),
  //     );
  //   } else {
  //     print("No saved data for you");
  //   }
  // }

  // GetDataSen3() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   Sentences3 = prefs.getInt("idSen3");
  //   print(Sentences3);
  //   if (Sentences3 == 202) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => good_evening(),
  //       ),
  //     );
  //   } else {
  //     print("No saved data for you");
  //   }
  // }

  // GetDataSen4() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   Sentences4 = prefs.getInt("idSen4");
  //   print(Sentences4);
  //   if (Sentences4 == 203) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => welcome(),
  //       ),
  //     );
  //   } else {
  //     print("No saved data for you");
  //   }
  // }

  // GetDataSen5() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   Sentences5 = prefs.getInt("idSen5");
  //   print(Sentences5);
  //   if (Sentences5 == 204) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => how_ara_you(),
  //       ),
  //     );
  //   } else {
  //     print("No saved data for you");
  //   }
  // }

  // GetDataSen6() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   Sentences6 = prefs.getInt("idSen6");
  //   print(Sentences6);
  //   if (Sentences6 == 205) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) =>love(),
  //       ),
  //     );
  //   } else {
  //     print("No saved data for you");
  //   }
  // }

  // GetDataSen7() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   Sentences7 = prefs.getInt("idSen7");
  //   print(Sentences7);
  //   if (Sentences7 == 206) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => i_want_to_go_out(),
  //       ),
  //     );
  //   } else {
  //     print("No saved data for you");
  //   }
  // }

  // GetDataSen8() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   Sentences8 = prefs.getInt("idSen8");
  //   print(Sentences8);
  //   if (Sentences8 == 207) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => i_want_to_play(),
  //       ),
  //     );
  //   } else {
  //     print("No saved data for you");
  //   }
  // }

  // GetDataSen9() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   Sentences9 = prefs.getInt("idSen9");
  //   print(Sentences9);
  //   if (Sentences9 == 208) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => im_sleepy(),
  //       ),
  //     );
  //   } else {
  //     print("No saved data for you");
  //   }
  // }

  // GetDataSen10() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   Sentences10 = prefs.getInt("idSen10");
  //   print(Sentences10);
  //   if (Sentences10 == 209) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => im_good(),
  //       ),
  //     );
  //   } else {
  //     print("No saved data for you");
  //   }
  // }

  // GetDataSen11() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   Sentences11 = prefs.getInt("idSen11");
  //   print(Sentences11);
  //   if (Sentences11 == 210) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) =>im_happy(),
  //       ),
  //     );
  //   } else {
  //     print("No saved data for you");
  //   }
  // }

  // GetDataSen12() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   Sentences12 = prefs.getInt("idSen12");
  //   print(Sentences12);
  //   if (Sentences12 == 211) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => im_sad(),
  //       ),
  //     );
  //   } else {
  //     print("No saved data for you");
  //   }
  // }

  // GetDataSen13() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   Sentences13 = prefs.getInt("idSen13");
  //   print(Sentences13);
  //   if (Sentences13 == 212) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) =>im_sorry(),
  //       ),
  //     );
  //   } else {
  //     print("No saved data for you");
  //   }
  // }

  // GetDataSen14() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   Sentences14 = prefs.getInt("idSen14");
  //   print(Sentences14);
  //   if (Sentences14 == 213) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => im_thirsty(),
  //       ),
  //     );
  //   } else {
  //     print("No saved data for you");
  //   }
  // }
  // GetDataSen15() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   Sentences15 = prefs.getInt("idSen15");
  //   print(Sentences15);
  //   if (Sentences15 == 214) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) =>finalCelebration(),
  //       ),
  //     );
  //   } else {
  //     print("No saved data for you");
  //   }
  // }
}
