import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:speakup/internet/build_offline_builder.dart';
import 'package:speakup/modules/Animals%20Voices/2-dog.dart';

import '../Letters Voice/Road map letters voices.dart';
import '1-cat.dart';

class RoadMapAnimalVoices extends StatefulWidget {
  const RoadMapAnimalVoices({Key? key}) : super(key: key);

  @override
  State<RoadMapAnimalVoices> createState() => _RoadMapAnimalVoicesState();
}

class _RoadMapAnimalVoicesState extends State<RoadMapAnimalVoices> {
  var userrrAnimal1;
  var userrrAnimal2;

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
              body: Padding(
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
                              color: Colors.red,
                            ),
                            height: 100,
                            width: 150,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 35, left: 5),
                            child: Text(
                              "أصوات الحيوانات",
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
                                "1",
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
                                      builder: (context) => cat1(),
                                    ),
                                  );
                                  //await SaveDataScreen();
                                  //  GetDataAnimal1();
                                  //  GetDataAnimal2();
                                  //await SaveDataRoad();
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
        ));
  }

  // GetDataAnimal1() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   userrrAnimal1 = prefs.getInt("idAniaml1");
  //   print(userrrAnimal1);
  //   if (userrrAnimal1 == 10) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => dog2(),
  //       ),
  //     );
  //   } else {
  //     print("No saved data for you");
  //   }
  // }

  // GetDataAnimal2() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   userrrAnimal2 = prefs.getInt("idAniaml2");
  //   print(userrrAnimal2);
  //  if (userrrAnimal2 == 11) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => RoadMaplettersvoices(),
  //       ),
  //     );
  //   } else 
  //   {
  //     print("No saved data for you");
  //   }
  // }
}
