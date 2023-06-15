import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:speakup/internet/build_offline_builder.dart';

class animals_voices extends StatefulWidget {
  const animals_voices({super.key});

  @override
  State<animals_voices> createState() => _animals_voicesState();
}

class _animals_voicesState extends State<animals_voices> {
  final SquirrelSound = AudioPlayer();
  final GiraffeSound = AudioPlayer();
  final SnakeSound = AudioPlayer();
  final SnailSound = AudioPlayer();
  final CrocodileSound = AudioPlayer();
  final FahadSound = AudioPlayer();
  final TigerSound = AudioPlayer();
  final LionSound = AudioPlayer();
  final HorseSound = AudioPlayer();
  final BearSound = AudioPlayer();
  final Url1S = 'gs://speakup-430fa.appspot.com/سنجاب.mp3';
  final Url1G = 'gs://speakup-430fa.appspot.com/زرافة.mp3';
  final Url1SK = 'gs://speakup-430fa.appspot.com/ثعبان.mp3';
  final Url1SN = 'gs://speakup-430fa.appspot.com/حلزون.mp3';
  final Url1C = 'gs://speakup-430fa.appspot.com/تمساح.mp3';
  final Url1F = 'gs://speakup-430fa.appspot.com/فهد.mp3';
  final Url1T = 'gs://speakup-430fa.appspot.com/نمر.mp3';
  final Url1L = 'gs://speakup-430fa.appspot.com/اسد.mp3';
  final Url1H = 'gs://speakup-430fa.appspot.com/حصان.mp3';
  final Url1B = 'gs://speakup-430fa.appspot.com/دب.mp3';
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
              "الحيوانات ",
              style: TextStyle(fontSize: 30),
            )),
        body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
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
                    Bounce(  duration: Duration(milliseconds: 110),
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
                                          height: 190,
                                          image: AssetImage("images/سنجاب.jfif")),
                                    ),
                                    Text("سنجاب ",
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
                            await SquirrelSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B3%D9%86%D8%AC%D8%A7%D8%A8.mp3?alt=media&token=f4a890e6-cef2-49b5-ad89-3092b47d74c0'));
                          }
                        })
                        ),
                    Divider(
                      height: 30,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.orange,
                    ),
                    Bounce(  duration: Duration(milliseconds: 110),
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
                                                AssetImage("images/زرافة.jfif"))),
                                    Text("زرافة ",
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
                            var Url2g = Url1G;
                            await GiraffeSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B2%D8%B1%D8%A7%D9%81%D8%A9.mp3?alt=media&token=83e0bd15-7f46-41de-9046-d6909cfd46ad'));
                          }
                        })),
                    Divider(
                      height: 30,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.orange,
                    ),
                    Bounce(   duration: Duration(milliseconds: 110),
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
                                                AssetImage("images/ثعبان.jfif"))),
                                    Text("ثعبان ",
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
                            var Url1sk = Url1SK;
                            await SnakeSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AB%D8%B9%D8%A8%D8%A7%D9%86.mp3?alt=media&token=06054b8d-e7a4-424c-93ec-6735adb08910'));
                          }
                        })),
                    Divider(
                      height: 30,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.orange,
                    ),
                    Bounce(  duration: Duration(milliseconds: 110),
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
                                          image: AssetImage("images/حلزون.jfif")),
                                    ),
                                    Text("حلزون ",
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
                            var Urlsn= Url1SN;
                            await SnailSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AD%D9%84%D8%B2%D9%88%D9%86.mp3?alt=media&token=08cb6185-59bd-4833-b3f8-6fa97bb55def'));
                          }
                        })),
                    Divider(
                      height: 30,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.orange,
                    ),
                    Bounce(  duration: Duration(milliseconds: 110),
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
                                            image:
                                                AssetImage("images/تمساح.jfif"))),
                                    Text("تمساح ",
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
                            await CrocodileSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AA%D9%85%D8%B3%D8%A7%D8%AD.mp3?alt=media&token=1853dac0-b6de-46ef-8454-9a00b860770e'));
                          }
                        })),
                    Divider(
                      height: 30,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.orange,
                    ),
                    Bounce(  duration: Duration(milliseconds: 110),
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
                                                AssetImage("images/فهد.jfif"))),
                                    Text("فهد ",
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
                            await FahadSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%81%D9%87%D8%AF.mp3?alt=media&token=dccc5284-db49-43fc-8941-5eb1fbad58fb'));
                          }
                        })),
                    Divider(
                      height: 30,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.orange,
                    ),
                    Bounce(  duration: Duration(milliseconds: 110),
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
                                          height: 220,
                                          image: AssetImage("images/نمر.jfif")),
                                    ),
                                    Text("نمر ",
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
                            var url1t = Url1T;
                            await TigerSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%86%D9%85%D8%B1.mp3?alt=media&token=82e89261-3fcd-40cb-be68-a68f8076093a'));
                          }
                        })),
                    Divider(
                      height: 30,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.orange,
                    ),
                    Bounce(  duration: Duration(milliseconds: 110),
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
                                            image: AssetImage("images/اسد.png"))),
                                    Text("اسد ",
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
                            var Url1l = Url1L;
                            await LionSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%A7%D8%B3%D8%AF.mp3?alt=media&token=39a03a03-f3be-4363-9cb3-81686c88d8d8'));
                          }
                        })),
                    Divider(
                      height: 30,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.orange,
                    ),
                    Bounce(  duration: Duration(milliseconds: 110),
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
                                            height: 300,
                                            image:
                                                AssetImage("images/حصان.jpg"))),
                                    Text("حصان ",
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
                            var url1h = Url1H;
                            await HorseSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AD%D8%B5%D8%A7%D9%86.mp3?alt=media&token=927f0686-a7f4-4fbe-adb8-62598a27b863'));
                          }
                        })),
                    Divider(
                      height: 30,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.orange,
                    ),
                    Bounce(  duration: Duration(milliseconds: 110),
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
                                            image: AssetImage("images/دب.jfif"))),
                                    Text("دب ",
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
                            var url1b = Url1B;
                            await BearSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AF%D8%A8.mp3?alt=media&token=6f9cdf67-e02a-43d3-adef-8d06c53cc844'));
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
