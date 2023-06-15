import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:speakup/internet/build_offline_builder.dart';
import 'package:speakup/modules/Words%20Voices/actions/close.dart';
import 'package:speakup/modules/Words%20Voices/actions/move.dart';
import 'package:speakup/modules/Words%20Voices/actions/open.dart';
import 'package:speakup/modules/Words%20Voices/actions/receive.dart';
import 'package:speakup/modules/Words%20Voices/actions/remove.dart';
import 'package:speakup/modules/Words%20Voices/actions/send.dart';
import 'package:speakup/modules/Words%20Voices/actions/start.dart';
import 'package:speakup/modules/Words%20Voices/actions/wait.dart';
import 'package:speakup/modules/Words%20Voices/all%20numbers/num.dart';
import 'package:speakup/modules/Words%20Voices/feeling/agree.dart';
import 'package:speakup/modules/Words%20Voices/feeling/no.dart';
import 'package:speakup/modules/Words%20Voices/feeling/yes.dart';
import 'package:speakup/modules/Words%20Voices/nouns/direction.dart';
import 'package:speakup/modules/Words%20Voices/nouns/eye.dart';
import 'package:speakup/modules/Words%20Voices/nouns/next.dart';

import '../Animals Voices/Road map Animals Voices.dart';
import '../Sentences Voices/Road map sentences voices.dart';
import 'all numbers/number2.dart';
import 'all numbers/number3.dart';
import 'all numbers/number4.dart';
import 'all numbers/number5.dart';
import 'all numbers/number6.dart';
import 'all numbers/number7.dart';
import 'all numbers/number8.dart';
import 'all numbers/number9.dart';
import 'all numbers/number1.dart';
//import 'dart:html';

class RoadMapWordsVoices extends StatefulWidget {
  const RoadMapWordsVoices({Key? key}) : super(key: key);

  @override
  State<RoadMapWordsVoices> createState() => _RoadMapWordsVoicesState();
}

class _RoadMapWordsVoicesState extends State<RoadMapWordsVoices> {
  DateTime? _lastPressedAt;
//  var userrrAdvice;
//  var userrr1;
//  var userrr2;
//  var userrr3;
//  var userrr4;
//  var userrr5;
//  var userrr6;
//  var userrr7;
//  var userrr8;
//  var userrr9;
//  var userrr100;
//  var userrr101;
//  var userrr102;
//  var userrr103;
//  var userrr104;
//  var userrr105;
//  var userrr106;
//  var userrr107;
//  var userrr108;
//  var userrr109;
//  var userrr110;
//  var userrr111;
//  var userrr112;
//  var userrr113;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
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
                        image: AssetImage("images/background for road map.jpg"),
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
                                color: Colors.red,
                              ),
                              height: 100,
                              width: 150,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 35, left: 10),
                              child: Text(
                                "أصوات الكلمات",
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
                                  "3",
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
                                color: Colors.orange,
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
                                onPressed: () {
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => number1(),
                                      ),
                                    );
                                    // GetData1();
                                    // GetData2();
                                    // GetData3();
                                    // GetData4();
                                    // GetData5();
                                    // GetData6();
                                    // GetData7();
                                    // GetData8();
                                    // GetData9();
                                    // GetData100();
                                    // GetData101();
                                    // GetData102();
                                    // GetData103();
                                    // GetData104();
                                    // GetData105();
                                    // GetData106();
                                    // GetData107();
                                    // GetData108();
                                    // GetData109();
                                    // GetData110();
                                    // GetData111();
                                    // GetData112();
                                    // GetData113();
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
                ))));
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

//   GetData0() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      userrrAdvice = prefs.getInt("id0");
//      print(userrrAdvice);
//      if (userrrAdvice == 0)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>HomeScreen2(),
//          ),
//       );
//       print("done");
//      }
//      else
//      {
//       print("no data");
//      }
// }
// save data
//   GetData1() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr1 = prefs.getInt("id1");
//     print(userrr1);
//     if (userrr1 == 1) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => number2(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData2() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr2 = prefs.getInt("id2");
//     print(userrr2);
//     if (userrr2 == 2) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => number3(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData3() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr3 = prefs.getInt("id3");
//     print(userrr3);
//     if (userrr3 == 3) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => number4(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData4() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr4 = prefs.getInt("id4");
//     print(userrr4);
//     if (userrr4 == 4) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => number5(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData5() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr5 = prefs.getInt("id5");
//     print(userrr5);
//     if (userrr5 == 5) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => number6(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData6() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr6 = prefs.getInt("id6");
//     print(userrr6);
//     if (userrr6 == 6) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => number7(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData7() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr7 = prefs.getInt("id7");
//     print(userrr7);
//     if (userrr7 == 7) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => number8(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData8() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr8 = prefs.getInt("id8");
//     print(userrr8);
//     if (userrr8 == 8) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => number9(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//      }
// }
// GetData9() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      userrr9 = prefs.getInt("id9");
//      print(userrr9);
//      if (userrr9 == 9)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => direction(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData100() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr100 = prefs.getInt("id100");
//     print(userrr100);
//     if (userrr100 == 100) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => eye(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData101() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr101 = prefs.getInt("id101");
//     print(userrr101);
//     if (userrr101 == 101) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => next(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData102() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr102 = prefs.getInt("id102");
//     print(userrr102);
//     if (userrr102 == 102) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => agree(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData103() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr103 = prefs.getInt("id103");
//     print(userrr103);
//     if (userrr103 == 103) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => no(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData104() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr104 = prefs.getInt("id104");
//     print(userrr104);
//     if (userrr104 == 104) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => yes(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData105() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr105 = prefs.getInt("id105");
//     print(userrr105);
//     if (userrr105 == 105) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => close(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData106() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr106 = prefs.getInt("id106");
//     print(userrr106);
//     if (userrr106 == 106) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => move(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData107() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr107 = prefs.getInt("id107");
//     print(userrr107);
//     if (userrr107 == 107) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => open(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData108() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr108 = prefs.getInt("id108");
//     print(userrr108);
//     if (userrr108 == 108) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => receive(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData109() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr109 = prefs.getInt("id109");
//     print(userrr109);
//     if (userrr109 == 109) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => remove(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData110() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr110 = prefs.getInt("id110");
//     print(userrr110);
//     if (userrr110 == 110) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => send(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData111() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr111 = prefs.getInt("id111");
//     print(userrr111);
//     if (userrr111 == 111) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => start(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData112() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr112 = prefs.getInt("id112");
//     print(userrr112);
//     if (userrr112 == 112) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => wait(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }

//   GetData113() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     userrr113 = prefs.getInt("id113");
//     print(userrr113);
//     if (userrr113 == 113) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => RoadMapSentencesVoices(),
//         ),
//       );
//     } else {
//       print("No saved data for you");
//     }
//   }
}
