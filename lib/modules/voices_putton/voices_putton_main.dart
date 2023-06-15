import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:speakup/internet/build_offline_builder.dart';
import 'package:speakup/modules/voices_putton/animals_voices.dart';
import 'package:speakup/modules/voices_putton/clothes_voices.dart';
import 'package:speakup/modules/voices_putton/food_voice.dart';
import 'package:speakup/modules/voices_putton/fruits_voices.dart';
import 'package:speakup/modules/voices_putton/home_voices.dart';
import 'package:speakup/modules/voices_putton/letters_voices.dart';
import 'package:speakup/modules/voices_putton/transports_voices.dart';
import 'package:speakup/modules/voices_putton/vegetables_voices.dart';

class voices_putton_main extends StatefulWidget {
  const voices_putton_main({super.key});

  @override
  State<voices_putton_main> createState() => _voices_putton_mainState();
}

class _voices_putton_mainState extends State<voices_putton_main> {
  @override
  Widget build(BuildContext context) {
    return BuildOfflineBuilder(
      screen: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.orange,
            elevation: 0,
            title: Text(
              "أصوات ",
              style: TextStyle(fontSize: 30),
            )),
        body: Padding(
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                color: Colors.white,
              ),
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                  height: 120,
                                  child: MaterialButton(
                                    splashColor: Colors.red,
                                    onPressed: () {
                                      {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                vegetables_voices(),
                                          ),
                                        );
                                      }
                                    },
                                    child: Image.asset(
                                      "images/vegetables_voices.jpeg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.yellow, width: 3),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.orange,
                                  )),
                              Text("الخضروات ")
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  height: 120,
                                  child: MaterialButton(
                                    splashColor: Colors.red,
                                    onPressed: () {
                                      {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => fruits_voices(),
                                          ),
                                        );
                                      }
                                    },
                                    child: Image.asset(
                                      "images/fruits_voices.jpeg",
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.yellow, width: 3),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.orange,
                                  )),
                              Text("الفواكه")
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                  height: 120,
                                  child: MaterialButton(
                                    splashColor: Colors.red,
                                    onPressed: () {
                                      {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => food_voice(),
                                          ),
                                        );
                                      }
                                    },
                                    child: Image.asset(
                                      "images/food_voice.jpeg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.yellow, width: 3),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.orange,
                                  )),
                              Text("الطعام ")
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  height: 120,
                                  child: MaterialButton(
                                    splashColor: Colors.red,
                                    onPressed: () {
                                      {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                clothes_voices(),
                                          ),
                                        );
                                      }
                                    },
                                    child: Image.asset(
                                      "images/clothes_voices.jpeg",
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.yellow, width: 3),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.orange,
                                  )),
                              Text("الملابس")
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                  height: 120,
                                  child: MaterialButton(
                                    splashColor: Colors.red,
                                    onPressed: () {
                                      {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                animals_voices(),
                                          ),
                                        );
                                      }
                                    },
                                    child: Image.asset(
                                      "images/animals_voices.jpeg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.yellow, width: 3),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.orange,
                                  )),
                              Text("الحيوانات ")
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  height: 120,
                                  child: MaterialButton(
                                    splashColor: Colors.red,
                                    onPressed: () {
                                      {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                letters_voices(),
                                          ),
                                        );
                                      }
                                    },
                                    child: Image.asset(
                                      "images/letters_voices.png",
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.yellow, width: 3),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.orange,
                                  )),
                              Text("الحروف")
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                  height: 120,
                                  child: MaterialButton(
                                    splashColor: Colors.red,
                                    onPressed: () {
                                      {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                transports_voices(),
                                          ),
                                        );
                                      }
                                    },
                                    child: Image.asset(
                                      "images/transports_voices.jpeg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.yellow, width: 3),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.orange,
                                  )),
                              Text("مواصلات ")
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  height: 120,
                                  child: MaterialButton(
                                    splashColor: Colors.red,
                                    onPressed: () {
                                      {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => home_voices(),
                                          ),
                                        );
                                      }
                                    },
                                    child: Image.asset(
                                      "images/home_voices.jpeg",
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.yellow, width: 3),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.orange,
                                  )),
                              Text("المنزل")
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
