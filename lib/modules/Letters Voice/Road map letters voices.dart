import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:speakup/internet/build_offline_builder.dart';
import 'package:speakup/modules/Home%20Screen/HomeScreen.dart';
import 'package:speakup/modules/Letters%20Voice/10-%D8%AB%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/11-%D8%AB%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/12-%D8%AB%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/13-%D8%AC%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/14-%D8%AC%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/15-%D8%AC%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/16-%D8%AD%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/17-%D8%AD%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/18-%D8%AD%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/19-%D8%AE%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/2-%D8%A5%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/20-%D8%AE%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/21-%D8%AE%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/22-%D8%AF%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/23-%D8%AF%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/24-%D8%AF%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/25-%D8%B0%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/26-%D8%B0%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/27-%D8%B0%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/28-%D8%B1%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/29-%D8%B1%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/3-%D8%A3%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/30-%D8%B1%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/31-%D8%B2%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/32-%D8%B2%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/33-%D8%B2%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/34-%D8%B3%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/35-%D8%B3%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/36-%D8%B3%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/37-%D8%B4%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/38-%D8%B4%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/39-%D8%B4%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/4-%D8%A8%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/40-%D8%B5%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/41-%D8%B5%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/42-%D8%B5%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/43-%D8%B6%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/44-%D8%B6%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/45-%D8%B6%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/46-%D8%B7%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/47-%D8%B7%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/48-%D8%B7%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/49-%D8%B8%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/5-%D8%A8%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/50-%D8%B8%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/51-%D8%B8%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/52-%D8%B9%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/53-%D8%B9%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/54-%D8%B9%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/55-%D8%BA%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/56-%D8%BA%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/57-%D8%BA%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/58-%D9%81%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/59-%D9%81%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/6-%D8%A8%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/60-%D9%81%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/61-%D9%82%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/62-%D9%82%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/63-%D9%82%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/64-%D9%83%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/65-%D9%83%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/66-%D9%83%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/67-%D9%84%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/68-%D9%84%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/69-%D9%84%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/7-%D8%AA%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/70-%D9%85%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/71-%D9%85%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/72-%D9%85%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/73-%D9%86%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/74-%D9%86%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/75-%D9%86%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/76-%D9%87%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/77-%D9%87%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/78-%D9%87%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/79-%D9%88%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/8-%D8%AA%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/80-%D9%88%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/81-%D9%88%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/82-%D9%89%D9%8E.dart';
import 'package:speakup/modules/Letters%20Voice/83-%D9%89%D9%90.dart';
import 'package:speakup/modules/Letters%20Voice/84-%D9%89%D9%8F.dart';
import 'package:speakup/modules/Letters%20Voice/9-%D8%AA%D9%8F.dart';
import 'package:speakup/modules/Words%20Voices/Road%20map%20words%20voices.dart';

import '1-أَ.dart';

class RoadMaplettersvoices extends StatefulWidget {
  const RoadMaplettersvoices({Key? key}) : super(key: key);

  @override
  State<RoadMaplettersvoices> createState() => _RoadMaplettersvoicesState();
}

class _RoadMaplettersvoicesState extends State<RoadMaplettersvoices> {
  DateTime? _lastPressedAt;
  int idScreen400 = 400;
  var Letter1;
  var Letter2;
  var Letter3;
  var Letter4;
  var Letter5;
  var Letter6;
  var Letter7;
  var Letter8;
  var Letter9;
  var Letter10;
  var Letter11;
  var Letter12;
  var Letter13;
  var Letter14;
  var Letter15;
  var Letter16;
  var Letter17;
  var Letter18;
  var Letter19;
  var Letter20;
  var Letter21;
  var Letter22;
  var Letter23;
  var Letter24;
  var Letter25;
  var Letter26;
  var Letter27;
  var Letter28;
  var Letter29;
  var Letter30;
  var Letter31;
  var Letter32;
  var Letter33;
  var Letter34;
  var Letter35;
  var Letter36;
  var Letter37;
  var Letter38;
  var Letter39;
  var Letter40;
  var Letter41;
  var Letter42;
  var Letter43;
  var Letter44;
  var Letter45;
  var Letter46;
  var Letter47;
  var Letter48;
  var Letter49;
  var Letter50;
  var Letter51;
  var Letter52;
  var Letter53;
  var Letter54;
  var Letter55;
  var Letter56;
  var Letter57;
  var Letter58;
  var Letter59;
  var Letter60;
  var Letter61;
  var Letter62;
  var Letter63;
  var Letter64;
  var Letter65;
  var Letter66;
  var Letter67;
  var Letter68;
  var Letter69;
  var Letter70;
  var Letter71;
  var Letter72;
  var Letter73;
  var Letter74;
  var Letter75;
  var Letter76;
  var Letter77;
  var Letter78;
  var Letter79;
  var Letter80;
  var Letter81;
  var Letter82;
  var Letter83;
  var Letter84;

  SaveDataScreen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('idScreen400', 400);
    print(
        "Successhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");
  }

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
                              border: Border.all(color: Colors.black, width: 3),
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
                              border: Border.all(color: Colors.black, width: 1),
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
                              border: Border.all(color: Colors.black, width: 3),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.red,
                            ),
                            height: 100,
                            width: 150,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 35, left: 10),
                            child: Text(
                              "أصوات الحروف",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            margin: EdgeInsets.only(top: 65, left: 60),
                            child: CircleAvatar(
                              child: Text(
                                "2",
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
                              border: Border.all(color: Colors.black, width: 3),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.orange,
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
                              border: Border.all(color: Colors.black, width: 1),
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
                              border: Border.all(color: Colors.black, width: 3),
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
                              border: Border.all(color: Colors.black, width: 1),
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
                                      builder: (context) => a1(),
                                    ),
                                  );
                                  await SaveDataScreen();
                                  // GetDataLetter1();
                                  // GetDataLetter2();
                                  // GetDataLetter3();
                                  // GetDataLetter4();
                                  // GetDataLetter5();
                                  // GetDataLetter6();
                                  // GetDataLetter7();
                                  // GetDataLetter8();
                                  // GetDataLetter9();
                                  // GetDataLetter10();
                                  // GetDataLetter11();
                                  // GetDataLetter12();
                                  // GetDataLetter13();
                                  // GetDataLetter14();
                                  // GetDataLetter15();
                                  // GetDataLetter16();
                                  // GetDataLetter17();
                                  // GetDataLetter18();
                                  // GetDataLetter19();
                                  // GetDataLetter20();
                                  // GetDataLetter21();
                                  // GetDataLetter22();
                                  // GetDataLetter23();
                                  // GetDataLetter24();
                                  // GetDataLetter25();
                                  // GetDataLetter26();
                                  // GetDataLetter27();
                                  // GetDataLetter28();
                                  // GetDataLetter29();
                                  // GetDataLetter30();
                                  // GetDataLetter31();
                                  // GetDataLetter32();
                                  // GetDataLetter33();
                                  // GetDataLetter34();
                                  // GetDataLetter35();
                                  // GetDataLetter36();
                                  // GetDataLetter37();
                                  // GetDataLetter38();
                                  // GetDataLetter39();
                                  // GetDataLetter40();
                                  // GetDataLetter41();
                                  // GetDataLetter42();
                                  // GetDataLetter43();
                                  // GetDataLetter44();
                                  // GetDataLetter45();
                                  // GetDataLetter46();
                                  // GetDataLetter47();
                                  // GetDataLetter48();
                                  // GetDataLetter49();
                                  // GetDataLetter50();
                                  // GetDataLetter51();
                                  // GetDataLetter52();
                                  // GetDataLetter53();
                                  // GetDataLetter54();
                                  // GetDataLetter55();
                                  // GetDataLetter56();
                                  // GetDataLetter57();
                                  // GetDataLetter58();
                                  // GetDataLetter59();
                                  // GetDataLetter60();
                                  // GetDataLetter61();
                                  // GetDataLetter62();
                                  // GetDataLetter63();
                                  // GetDataLetter64();
                                  // GetDataLetter65();
                                  // GetDataLetter66();
                                  // GetDataLetter67();
                                  // GetDataLetter68();
                                  // GetDataLetter69();
                                  // GetDataLetter70();
                                  // GetDataLetter71();
                                  // GetDataLetter72();
                                  // GetDataLetter73();
                                  // GetDataLetter74();
                                  // GetDataLetter75();
                                  //  GetDataLetter76();
                                  //  GetDataLetter77();
                                  //  GetDataLetter78();
                                  //  GetDataLetter79();
                                  //  GetDataLetter80();
                                  //  GetDataLetter81();
                                  //  GetDataLetter82();
                                  //  GetDataLetter83();
                                  //  GetDataLetter84();
                                }
                              },
                              child: Text(
                                'التالى ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              )),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.yellow, width: 2),
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ],
                  )),
                ),
              )),
        )));
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
//   GetDataLetter1() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter1 = prefs.getInt("idLetter1");
//      print(Letter1);
//      if (Letter1 == 1001)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) => a2() ,
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter2() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter2 = prefs.getInt("idLetter2");
//      print(Letter2);
//      if (Letter2 == 1002)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>a3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter3() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter3 = prefs.getInt("idLetter3");
//      print(Letter3);
//      if (Letter3 == 1003)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>b1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter4() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter4 = prefs.getInt("idLetter4");
//      print(Letter4);
//      if (Letter4 == 1004)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>b2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter5() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter5 = prefs.getInt("idLetter5");
//      print(Letter5);
//      if (Letter5 == 1005)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>b3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter6() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter6 = prefs.getInt("idLetter6");
//      print(Letter6);
//      if (Letter6 == 1006)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>c1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter7() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter7 = prefs.getInt("idLetter7");
//      print(Letter7);
//      if (Letter7 == 1007)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>c2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter8() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter8 = prefs.getInt("idLetter8");
//      print(Letter8);
//      if (Letter8 == 1008)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>c3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter9() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter9 = prefs.getInt("idLetter9");
//      print(Letter9);
//      if (Letter9 == 1009)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>d1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter10() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter10 = prefs.getInt("idLetter10");
//      print(Letter10);
//      if (Letter10 == 1010)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>d2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter11() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter11 = prefs.getInt("idLetter11");
//      print(Letter11);
//      if (Letter11 == 1011)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>d3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter12() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter12 = prefs.getInt("idLetter12");
//      print(Letter12);
//      if (Letter12 == 1012)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>e1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter13() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter13 = prefs.getInt("idLetter13");
//      print(Letter13);
//      if (Letter13 == 1013)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>e2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter14() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter14 = prefs.getInt("idLetter14");
//      print(Letter14);
//      if (Letter14 == 1014)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>e3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter15() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter15 = prefs.getInt("idLetter15");
//      print(Letter15);
//      if (Letter15 == 1015)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>f1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter16() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter16 = prefs.getInt("idLetter16");
//      print(Letter16);
//      if (Letter16 == 1016)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>f2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter17() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter17 = prefs.getInt("idLetter17");
//      print(Letter17);
//      if (Letter17 == 1017)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>f3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter18() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter18 = prefs.getInt("idLetter18");
//      print(Letter18);
//      if (Letter18 == 1018)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>g1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter19() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter19 = prefs.getInt("idLetter19");
//      print(Letter19);
//      if (Letter19 == 1019)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>g2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter20() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter20 = prefs.getInt("idLetter20");
//      print(Letter20);
//      if (Letter20 == 1020)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>g3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter21() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter21 = prefs.getInt("idLetter21");
//      print(Letter21);
//      if (Letter21 == 1021)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>h1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter22() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter22 = prefs.getInt("idLetter22");
//      print(Letter22);
//      if (Letter22 == 1022)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>h2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter23() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter23 = prefs.getInt("idLetter23");
//      print(Letter23);
//      if (Letter23 == 1023)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>h3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter24() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter24 = prefs.getInt("idLetter24");
//      print(Letter24);
//      if (Letter24 == 1024)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>i1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter25() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter25 = prefs.getInt("idLetter25");
//      print(Letter25);
//      if (Letter25 == 1025)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>i2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter26() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter26 = prefs.getInt("idLetter26");
//      print(Letter26);
//      if (Letter26 == 1026)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>i3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter27() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter27 = prefs.getInt("idLetter27");
//      print(Letter27);
//      if (Letter27 == 1027)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>j1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter28() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter28 = prefs.getInt("idLetter28");
//      print(Letter28);
//      if (Letter28 == 1028)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>j2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter29() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter29 = prefs.getInt("idLetter29");
//      print(Letter29);
//      if (Letter29 == 1029)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>j3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter30() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter30 = prefs.getInt("idLetter30");
//      print(Letter30);
//      if (Letter30 == 1030)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>k1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter31() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter31 = prefs.getInt("idLetter31");
//      print(Letter31);
//      if (Letter31 == 1031)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>k2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter32() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter32 = prefs.getInt("idLetter32");
//      print(Letter32);
//      if (Letter32 == 1032)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>k3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter33() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter33 = prefs.getInt("idLetter33");
//      print(Letter33);
//      if (Letter33 == 1033)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>l1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter34() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter34 = prefs.getInt("idLetter34");
//      print(Letter34);
//      if (Letter34 == 1034)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>l2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter35() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter35 = prefs.getInt("idLetter35");
//      print(Letter35);
//      if (Letter35 == 1035)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>l3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter36() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter36 = prefs.getInt("idLetter36");
//      print(Letter36);
//      if (Letter36 == 1036)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>m1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter37() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter37 = prefs.getInt("idLetter37");
//      print(Letter37);
//      if (Letter37 == 1037)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>m2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter38() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter38 = prefs.getInt("idLetter38");
//      print(Letter38);
//      if (Letter38 == 1038)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>m3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter39() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter39 = prefs.getInt("idLetter39");
//      print(Letter39);
//      if (Letter39 == 1039)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>n1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter40() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter40 = prefs.getInt("idLetter40");
//      print(Letter40);
//      if (Letter40 == 1040)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>n2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter41() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter41 = prefs.getInt("idLetter41");
//      print(Letter41);
//      if (Letter41 == 1041)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>n3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter42() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter42 = prefs.getInt("idLetter42");
//      print(Letter42);
//      if (Letter42 == 1042)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>o1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter43() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter43 = prefs.getInt("idLetter43");
//      print(Letter43);
//      if (Letter43 == 1043)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>o2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter44() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter44 = prefs.getInt("idLetter44");
//      print(Letter44);
//      if (Letter44 == 1044)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>o3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter45() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter45 = prefs.getInt("idLetter45");
//      print(Letter45);
//      if (Letter45 == 1045)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>p1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter46() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter46 = prefs.getInt("idLetter46");
//      print(Letter46);
//      if (Letter46 == 1046)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>p2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter47() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter47 = prefs.getInt("idLetter47");
//      print(Letter47);
//      if (Letter47 == 1047)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>p3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter48() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter48 = prefs.getInt("idLetter48");
//      print(Letter48);
//      if (Letter48 == 1048)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>q1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter49() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter49 = prefs.getInt("idLetter49");
//      print(Letter49);
//      if (Letter49 == 1049)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>q2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter50() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter50 = prefs.getInt("idLetter50");
//      print(Letter50);
//      if (Letter50 == 1050)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>q3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter51() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter51 = prefs.getInt("idLetter51");
//      print(Letter51);
//      if (Letter51 == 1051)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>r1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter52() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter52 = prefs.getInt("idLetter52");
//      print(Letter52);
//      if (Letter52 == 1052)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>r2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter53() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter53 = prefs.getInt("idLetter53");
//      print(Letter53);
//      if (Letter53 == 1053)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>r3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter54() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter54 = prefs.getInt("idLetter54");
//      print(Letter54);
//      if (Letter54 == 1054)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>s1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter55() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter55 = prefs.getInt("idLetter55");
//      print(Letter55);
//      if (Letter55 == 1055)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>s2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter56() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter56 = prefs.getInt("idLetter56");
//      print(Letter56);
//      if (Letter56 == 1056)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>s3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter57() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter57 = prefs.getInt("idLetter57");
//      print(Letter57);
//      if (Letter57 == 1057)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>t1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter58() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter58 = prefs.getInt("idLetter58");
//      print(Letter58);
//      if (Letter58 == 1058)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>t2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter59() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter59 = prefs.getInt("idLetter59");
//      print(Letter59);
//      if (Letter59 == 1059)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>t3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter60() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter60 = prefs.getInt("idLetter60");
//      print(Letter60);
//      if (Letter60 == 1060)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>u1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter61() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter61 = prefs.getInt("idLetter61");
//      print(Letter61);
//      if (Letter61 == 1061)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>u2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter62() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter62 = prefs.getInt("idLetter62");
//      print(Letter62);
//      if (Letter62 == 1062)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>u3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter63() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter63 = prefs.getInt("idLetter63");
//      print(Letter63);
//      if (Letter63 == 1063)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>v1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter64() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter64 = prefs.getInt("idLetter64");
//      print(Letter64);
//      if (Letter64 == 1064)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>v2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter65() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter65 = prefs.getInt("idLetter65");
//      print(Letter65);
//      if (Letter65 == 1065)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>v3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter66() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter66 = prefs.getInt("idLetter66");
//      print(Letter66);
//      if (Letter66 == 1066)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>w1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter67() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter67 = prefs.getInt("idLetter67");
//      print(Letter67);
//      if (Letter67 == 1067)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>w2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter68() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter68 = prefs.getInt("idLetter68");
//      print(Letter68);
//      if (Letter68 == 1068)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>w3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter69() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter69 = prefs.getInt("idLetter69");
//      print(Letter69);
//      if (Letter69 == 1069)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>x1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter70() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter70 = prefs.getInt("idLetter70");
//      print(Letter70);
//      if (Letter70 == 1070)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>x2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter71() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter71 = prefs.getInt("idLetter71");
//      print(Letter71);
//      if (Letter71 == 1071)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>x3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter72() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter72 = prefs.getInt("idLetter72");
//      print(Letter72);
//      if (Letter72 == 1072)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>y1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter73() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter73 = prefs.getInt("idLetter73");
//      print(Letter73);
//      if (Letter73 == 1073)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>y2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter74() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter74 = prefs.getInt("idLetter74");
//      print(Letter74);
//      if (Letter74 == 1074)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>y3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter75() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter75 = prefs.getInt("idLetter75");
//      print(Letter75);
//      if (Letter75 == 1075)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>z1(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter76() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter76 = prefs.getInt("idLetter76");
//      print(Letter76);
//      if (Letter76 == 1076)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>z2(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter77() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter77 = prefs.getInt("idLetter77");
//      print(Letter77);
//      if (Letter77 == 1077)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>z3(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter78() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter78 = prefs.getInt("idLetter78");
//      print(Letter78);
//      if (Letter78 == 1078)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>z31(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter79() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter79 = prefs.getInt("idLetter79");
//      print(Letter79);
//      if (Letter79 == 1079)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>z32(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter80() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter80 = prefs.getInt("idLetter80");
//      print(Letter80);
//      if (Letter80 == 1080)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>z33(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter81() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter81 = prefs.getInt("idLetter81");
//      print(Letter81);
//      if (Letter81 == 1081)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>z34(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter82() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter82 = prefs.getInt("idLetter82");
//      print(Letter82);
//      if (Letter82 == 1082)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>z35(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter83() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter83 = prefs.getInt("idLetter83");
//      print(Letter83);
//      if (Letter83 == 1083)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>z36(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
// }
// GetDataLetter84() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//      Letter84 = prefs.getInt("idLetter84");
//      print(Letter84);
//      if (Letter84 == 1084)
//      {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//         builder: (context) =>RoadMapWordsVoices(),
//          ),
//       );
//      }
//      else
//      {
//       print("No saved data for you");
//      }
//}
}
