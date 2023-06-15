import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:speakup/internet/build_offline_builder.dart';

class home_voices extends StatefulWidget {
  const home_voices({super.key});

  @override
  State<home_voices> createState() => _home_voicesState();
}

class _home_voicesState extends State<home_voices> {
  final BroomSound = AudioPlayer();
  final FanSound = AudioPlayer();
  final Sound = AudioPlayer();
  final CupboardclothesSound = AudioPlayer();
  final WashingSound = AudioPlayer();
  final LambSound = AudioPlayer();
  final BotagasSound = AudioPlayer();
  final ForkSound = AudioPlayer();
  final CupSound = AudioPlayer();
  final KeySound = AudioPlayer();
  final Url1B = 'gs://speakup-430fa.appspot.com/مكنسة.mp3';
  final Url1F = 'gs://speakup-430fa.appspot.com/مروحة.mp3';
  final Url1O = '';
  final Url1C = 'gs://speakup-430fa.appspot.com/دولاب.mp3';
  final Url1WA = 'gs://speakup-430fa.appspot.com/غسالة.mp3';
  final url1L = 'gs://speakup-430fa.appspot.com/لمبة.mp3';
  final Url1BO = 'gs://speakup-430fa.appspot.com/بوتاجاز.mp3';
  final Url1FO = 'gs://speakup-430fa.appspot.com/شوكة.mp3';
  final Url1CU = 'gs://speakup-430fa.appspot.com/كوباية.mp3';
  final Url1K = 'gs://speakup-430fa.appspot.com/مفتاح.mp3';

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
              "المنزل ",
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
                                          image:
                                              AssetImage("images/مكنسة.jfif")),
                                    ),
                                    Text("مكنسة ",
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
                            await BroomSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%85%D9%83%D9%86%D8%B3%D8%A9.mp3?alt=media&token=c2c5347e-6e93-48a1-8649-ced8a5ea243c'));
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
                                                "images/مروحة.jpg"))),
                                    Text("مروحة ",
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
                            var Url1f = Url1F;
                            await FanSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%85%D8%B1%D9%88%D8%AD%D8%A9.mp3?alt=media&token=6a1620e7-74d0-4e6e-a799-c3b376f7ecbd'));
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
                                          image:
                                              AssetImage("images/دولاب.jfif")),
                                    ),
                                    Text("دولاب ",
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
                            var Url1c = Url1C;
                            await CupboardclothesSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AF%D9%88%D9%84%D8%A7%D8%A8.mp3?alt=media&token=2465abfe-5ba3-4181-a41c-8885d107d24c'));
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
                                                "images/غسالة.jfif"))),
                                    Text("غسالة ",
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
                            var Url1wa = Url1WA;
                            await WashingSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%BA%D8%B3%D8%A7%D9%84%D8%A9.mp3?alt=media&token=ffc0e151-76a5-4c06-a9b8-29213443f33e'));
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
                                                "images/لمبة.jfif"))),
                                    Text("لمبة ",
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
                            var Url1l = url1L;
                            await LambSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%84%D9%85%D8%A8%D8%A9.mp3?alt=media&token=a5b411c8-1e36-4675-898c-192a839f952d'));
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
                                              AssetImage("images/بوتاجاز.jpg")),
                                    ),
                                    Text("بوتاجاز ",
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
                            var url1bo = Url1BO;
                            await BotagasSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%A8%D9%88%D8%AA%D8%A7%D8%AC%D8%A7%D8%B2.mp3?alt=media&token=b932b13b-093c-490a-97e1-48435bf63739'));
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
                                                "images/شوكة.jfif"))),
                                    Text("شوكة ",
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
                            var Url1fo = Url1FO;
                            await ForkSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B4%D9%88%D9%83%D8%A9.mp3?alt=media&token=b8eeec61-a79d-4c11-9f96-25d1d1f8399a'));
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
                                                "images/كوباية.jpg"))),
                                    Text("كوباية ",
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
                            var url1cu = Url1CU;
                            await CupSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%83%D9%88%D8%A8%D8%A7%D9%8A%D8%A9.mp3?alt=media&token=07178631-ef78-4261-a030-9ffa1e1d7476'));
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
                                                "images/مفتاح.png"))),
                                    Text("مفتاح ",
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
                            await KeySound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%85%D9%81%D8%AA%D8%A7%D8%AD.mp3?alt=media&token=e6f77a68-f9d9-4165-be4e-67e40e316e8b'));
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
