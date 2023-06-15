import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:speakup/internet/build_offline_builder.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

class fruits_voices extends StatefulWidget {
  const fruits_voices({super.key});

  @override
  State<fruits_voices> createState() => _fruits_voicesState();
}

class _fruits_voicesState extends State<fruits_voices> {
  final AppleSound = AudioPlayer();
  final BananaSound = AudioPlayer();
  final OrangeSound = AudioPlayer();
  final PineappleSound = AudioPlayer();
  final StrawberrySound = AudioPlayer();
  final watermelonSound = AudioPlayer();
  final GrapesSound = AudioPlayer();
  final ApricotSound = AudioPlayer();
  final PearsSound = AudioPlayer();
  final KiwiSound = AudioPlayer();
  final Url1A = 'gs://speakup-430fa.appspot.com/تفاحة.mp3'; // File location.
  final Url1B = 'gs://speakup-430fa.appspot.com/موزة.mp3';
  final Url1O = 'gs://speakup-430fa.appspot.com/برتقالة.mp3';
  final Url1P = 'gs://speakup-430fa.appspot.com/أناناس.mp3';
  final Url1S = 'gs://speakup-430fa.appspot.com/فراولة.mp3';
  final Url1W = 'gs://speakup-430fa.appspot.com/بطيخ.mp3';
  final Url1G = 'gs://speakup-430fa.appspot.com/عنب.mp3';
  final Url1AP = 'gs://speakup-430fa.appspot.com/مشمش.mp3';
  final Url1PE = 'gs://speakup-430fa.appspot.com/كمثري.mp3';
  final Url1K = 'gs://speakup-430fa.appspot.com/كيوي.mp3';
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
              "الفواكه ",
              style: TextStyle(fontSize: 30),
            )),
        body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
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
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Bounce(
                        duration: Duration(milliseconds: 110),
                        onPressed: () async {
                          var Url1a = Url1A;
                          await AppleSound.play(UrlSource(
                              'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AA%D9%81%D8%A7%D8%AD%D8%A9.mp3?alt=media&token=7a9a5e17-24e3-4fda-995d-64b211413468'));
                        },
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    child: Image(
                                        height: 200,
                                        image:
                                            AssetImage("images/apple (2).png")),
                                  ),
                                  Text("تفاحة ",
                                      style: TextStyle(
                                        fontSize: 30,
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      height: 30,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.orange,
                    ),
                    Bounce(
                        duration: Duration(milliseconds: 110),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        child: Image(
                                            height: 150,
                                            image: AssetImage(
                                                "images/banana.png"))),
                                    Text("موزة ",
                                        style: TextStyle(
                                          fontSize: 30,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: (() async {
                          {
                            var Url1b = Url1B;
                            await BananaSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%85%D9%88%D8%B2%D8%A9.mp3?alt=media&token=e04e9fce-4419-43fb-8544-e8f5f23f076a'));
                          }
                        })),
                    Divider(
                      height: 30,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.orange,
                    ),
                    Bounce(
                        duration: Duration(milliseconds: 110),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        child: Image(
                                            height: 200,
                                            image: AssetImage(
                                                "images/Orange.jfif"))),
                                    Text("برتقالة ",
                                        style: TextStyle(
                                          fontSize: 30,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: (() async {
                          {
                            var Url1o = Url1O;
                            await OrangeSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%A8%D8%B1%D8%AA%D9%82%D8%A7%D9%84%D8%A9.mp3?alt=media&token=cdbe8e05-2ed3-414a-adab-d6efd6d93920'));
                          }
                        })),
                    Divider(
                      height: 30,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.orange,
                    ),
                    Bounce(
                        duration: Duration(milliseconds: 110),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      child: Image(
                                          height: 250,
                                          image: AssetImage(
                                              "images/Pineapple.jfif")),
                                    ),
                                    Text("أناناس ",
                                        style: TextStyle(
                                          fontSize: 30,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: (() async {
                          {
                            var Url1p = Url1P;
                            await PineappleSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%A3%D9%86%D8%A7%D9%86%D8%A7%D8%B3.mp3?alt=media&token=0e7f9048-cba4-4a90-b1d7-b55d0ff09433'));
                          }
                        })),
                    Divider(
                      height: 30,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.orange,
                    ),
                    Bounce(
                        duration: Duration(milliseconds: 110),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        child: Image(
                                            height: 150,
                                            image: AssetImage(
                                                "images/strawberry.jfif"))),
                                    Text("فراولة ",
                                        style: TextStyle(
                                          fontSize: 30,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: (() async {
                          {
                            var Url1s = Url1S;
                            await StrawberrySound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%81%D8%B1%D8%A7%D9%88%D9%84%D8%A9.mp3?alt=media&token=df87df7c-32e3-4a41-ba92-72e0ac956efc'));
                          }
                        })),
                    Divider(
                      height: 30,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.orange,
                    ),
                    Bounce(
                        duration: Duration(milliseconds: 110),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        child: Image(
                                            height: 200,
                                            image: AssetImage(
                                                "images/watermelon.jfif"))),
                                    Text("بطيخ ",
                                        style: TextStyle(
                                          fontSize: 30,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: (() async {
                          {
                            var Ur1w = Url1W;
                            await watermelonSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%A8%D8%B7%D9%8A%D8%AE.mp3?alt=media&token=996baf0d-7a3e-4106-9e6d-202333e25e2a'));
                          }
                        })),
                    Divider(
                      height: 30,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.orange,
                    ),
                    Bounce(
                        duration: Duration(milliseconds: 110),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      child: Image(
                                          height: 200,
                                          image:
                                              AssetImage("images/grapes.jfif")),
                                    ),
                                    Text("عنب ",
                                        style: TextStyle(
                                          fontSize: 30,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: (() async {
                          {
                            var url1g = Url1G;
                            await GrapesSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B9%D9%86%D8%A8.mp3?alt=media&token=b32a3840-894d-44ed-a8a3-c14922c79241'));
                          }
                        })),
                    Divider(
                      height: 30,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.orange,
                    ),
                    Bounce(
                        duration: Duration(milliseconds: 110),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        child: Image(
                                            height: 150,
                                            image: AssetImage(
                                                "images/apricot.jfif"))),
                                    Text("مشمش ",
                                        style: TextStyle(
                                          fontSize: 30,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: (() async {
                          {
                            var Url1ap = Url1AP;
                            await ApricotSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%85%D8%B4%D9%85%D8%B4.mp3?alt=media&token=a90d526b-da9c-47c3-91ba-c9b44022f384'));
                          }
                        })),
                    Divider(
                      height: 30,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.orange,
                    ),
                    Bounce(
                        duration: Duration(milliseconds: 110),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        child: Image(
                                            height: 200,
                                            image: AssetImage(
                                                "images/pear.jfif"))),
                                    Text("كمثرى ",
                                        style: TextStyle(
                                          fontSize: 30,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: (() async {
                          {
                            var url1pe = Url1PE;
                            await PearsSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%83%D9%85%D8%AB%D8%B1%D9%8A.mp3?alt=media&token=1829a69b-f5e0-4bc9-9512-e4ddd0732982'));
                          }
                        })),
                    Divider(
                      height: 30,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.orange,
                    ),
                    Bounce(
                        duration: Duration(milliseconds: 110),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        child: Image(
                                            height: 200,
                                            image:
                                                AssetImage("images/Kiwi.jpg"))),
                                    Text("كيوى ",
                                        style: TextStyle(
                                          fontSize: 30,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: (() async {
                          {
                            var url1k = Url1K;
                            await KiwiSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%83%D9%8A%D9%88%D9%8A.mp3?alt=media&token=afb3a9d5-fb99-4828-a41c-a16177b6b914'));
                          }
                        })),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
