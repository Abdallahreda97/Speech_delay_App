import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:speakup/internet/build_offline_builder.dart';
import 'package:speakup/modules/Cartoons/%D8%A3%D9%86%D8%B4%D9%88%D8%AF%D9%87%20%D8%A7%D9%84%D8%AD%D8%B1%D9%88%D9%81.dart';
import 'package:speakup/modules/Cartoons/%D8%A7%D9%84%D8%A3%D8%B4%D9%83%D8%A7%D9%84%20%D8%A7%D9%84%D9%87%D9%86%D8%AF%D8%B3%D9%8A%D9%87.dart';
import 'package:speakup/modules/Cartoons/%D8%A7%D9%84%D8%AD%D9%88%D8%A7%D8%B3%20%D8%A7%D9%84%D8%AE%D9%85%D8%B3%D9%87.dart';
import 'package:speakup/modules/Cartoons/%D8%A7%D9%84%D8%AD%D9%8A%D9%88%D8%A7%D9%86%D8%A7%D8%AA%20%D8%A7%D9%84%D9%85%D9%81%D8%AA%D8%B1%D8%B3%D9%87.dart';
import 'package:speakup/modules/Cartoons/%D8%AA%D8%B9%D9%84%D9%8A%D9%85%20%D8%A7%D9%84%D8%A3%D8%B1%D9%82%D8%A7%D9%85.dart';
import 'package:speakup/modules/Cartoons/%D8%AA%D8%B9%D9%84%D9%8A%D9%85%20%D8%A7%D9%84%D8%A3%D9%84%D9%88%D8%A7%D9%86.dart';
import 'package:speakup/modules/Cartoons/%D8%AD%D9%8A%D9%88%D8%A7%D9%86%D8%A7%D8%AA%20%D8%A7%D9%84%D8%A8%D8%AD%D8%B1.dart';
import 'package:speakup/modules/Cartoons/%D8%B5%D8%BA%D8%A7%D8%B1%20%D8%A7%D9%84%D8%AD%D9%8A%D9%88%D8%A7%D9%86%D8%A7%D8%AA.dart';
import 'package:speakup/modules/voices_putton/letters_voices.dart';

class cartoon extends StatefulWidget {
  const cartoon({Key? key}) : super(key: key);

  @override
  State<cartoon> createState() => _cartoonState();
}

class _cartoonState extends State<cartoon> {
  @override
  Widget build(BuildContext context) {
    return BuildOfflineBuilder(
      screen: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          centerTitle: true,
          title: Text(
            "فيديوهات تعليمية",
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
              child: Column(children: [
                InkWell(
                    child: Container(
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                "images/الحواس الخمسة.jpg",
                              ),
                            ),
                            Text(
                              "الحواس الخمسة",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            Icon(
                              Icons.play_circle,
                              size: 50,
                              color: Colors.orange,
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FiveSenses(),
                          ),
                        );
                      }
                    }),
                Divider(
                  height: 30,
                  thickness: 1,
                  color: Colors.orange,
                ),
                InkWell(
                    child: Container(
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                "images/الحروف.jpg",
                              ),
                            ),
                            Text(
                              "أنشودة الحروف",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            Icon(
                              Icons.play_circle,
                              size: 50,
                              color: Colors.orange,
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Letters2(),
                          ),
                        );
                      }
                    }),
                Divider(
                  height: 30,
                  thickness: 1,
                  color: Colors.orange,
                ),
                InkWell(
                    child: Container(
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                "images/الارقام.jpg",
                              ),
                            ),
                            Text(
                              "تعليم الأرقام ",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            Icon(
                              Icons.play_circle,
                              size: 50,
                              color: Colors.orange,
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Numbers(),
                        ),
                      );
                    }),
                Divider(
                  height: 30,
                  thickness: 1,
                  color: Colors.orange,
                ),
                InkWell(
                    child: Container(
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                "images/الالوان.jpg",
                              ),
                            ),
                            Text(
                              "تعليم الألوان",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            Icon(
                              Icons.play_circle,
                              size: 50,
                              color: Colors.orange,
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TechingColors(),
                        ),
                      );
                    }),
                Divider(
                  height: 30,
                  thickness: 1,
                  color: Colors.orange,
                ),
                InkWell(
                    child: Container(
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                "images/الاشكال الهندسية.jpg",
                              ),
                            ),
                            Text(
                              "الأشكال الهندسية",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            Icon(
                              Icons.play_circle,
                              size: 50,
                              color: Colors.orange,
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Shapes(),
                        ),
                      );
                    }),
                Divider(
                  height: 30,
                  thickness: 1,
                  color: Colors.orange,
                ),
                InkWell(
                    child: Container(
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                "images/حيوانات البحر.jpg",
                              ),
                            ),
                            Text(
                              "حيوانات البحر ",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            Icon(
                              Icons.play_circle,
                              size: 50,
                              color: Colors.orange,
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AnimalsOfSea(),
                        ),
                      );
                    }),
                Divider(
                  height: 30,
                  thickness: 1,
                  color: Colors.orange,
                ),
                InkWell(
                    child: Container(
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                "images/صغار الحيوانات.jpg",
                              ),
                            ),
                            Text(
                              "صغار الحيوانات",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            Icon(
                              Icons.play_circle,
                              size: 50,
                              color: Colors.orange,
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BabyAnimals(),
                        ),
                      );
                    }),
                Divider(
                  height: 30,
                  thickness: 1,
                  color: Colors.orange,
                ),
                InkWell(
                    child: Container(
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                "images/الحيوانات المفترسة.jpg",
                              ),
                            ),
                            Text(
                              "الحيوانات المفترسة",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            Icon(
                              Icons.play_circle,
                              size: 50,
                              color: Colors.orange,
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WildAnimals(),
                        ),
                      );
                    }),
              ]),
            )),
      ),
    );
  }
}
