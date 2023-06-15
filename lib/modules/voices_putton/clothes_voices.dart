import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:speakup/internet/build_offline_builder.dart';

class clothes_voices extends StatefulWidget {
  const clothes_voices({super.key});

  @override
  State<clothes_voices> createState() => _clothes_voicesState();
}

class _clothes_voicesState extends State<clothes_voices> {
  final TshirtSound = AudioPlayer();
  final ShirtSound = AudioPlayer();
  final BantalonSound = AudioPlayer();
  final CapSound = AudioPlayer();
  final JacketSound = AudioPlayer();
  final BloverSound = AudioPlayer();
  final FutaSound = AudioPlayer();
  final BeltSound = AudioPlayer();
  final SuitSound = AudioPlayer();
  final ShoesSound = AudioPlayer();
  final Url1T = 'gs://speakup-430fa.appspot.com/تي شيرت.mp3';
  final Url1S = 'gs://speakup-430fa.appspot.com/قميص.mp3';
  final Url1B = 'gs://speakup-430fa.appspot.com/بنطالون.mp3';
  final Url1C = 'gs://speakup-430fa.appspot.com/كاب.mp3';
  final Url1J = 'gs://speakup-430fa.appspot.com/جاكيت.mp3';
  final Url1BL = 'gs://speakup-430fa.appspot.com/بلوفر.mp3';
  final Url1F = 'gs://speakup-430fa.appspot.com/فوطة.mp3';
  final Url1BE = 'gs://speakup-430fa.appspot.com/حزام.mp3';
  final Url1SU = 'gs://speakup-430fa.appspot.com/بدلة.mp3';
  final Url1SH = 'gs://speakup-430fa.appspot.com/جزمة.mp3';
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
              "الملابس ",
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
                                          height: 200,
                                          image: AssetImage(
                                              "images/تى شيرت.jpeg")),
                                    ),
                                    Text("تى شيرت ",
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
                            var Url1t = Url1T;
                            await TshirtSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AA%D9%8A%20%D8%B4%D9%8A%D8%B1%D8%AA.mp3?alt=media&token=030df39d-6c3d-4bc7-b374-66b9d6b62b53'));
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
                                                AssetImage("images/قميص.png"))),
                                    Text("قميص ",
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
                            await ShirtSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%82%D9%85%D9%8A%D8%B5.mp3?alt=media&token=f97046a9-3513-4f6b-a5a5-796f5bf165c9'));
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
                                                "images/بنطال.jpeg"))),
                                    Text("بنطال ",
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
                            await BantalonSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%A8%D9%86%D8%B7%D8%A7%D9%84%D9%88%D9%86.mp3?alt=media&token=fce7086f-3375-49c3-a1b2-1082e12584a8'));
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
                                          image: AssetImage("images/كاب.png")),
                                    ),
                                    Text("كاب ",
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
                            await CapSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%83%D8%A7%D8%A8.mp3?alt=media&token=34baf32a-ffd5-4a71-a261-6da557252d17'));
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
                                                "images/جاكيت.jpeg"))),
                                    Text("جاكيت ",
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
                            var Url1j = Url1J;
                            await JacketSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AC%D8%A7%D9%83%D9%8A%D8%AA.mp3?alt=media&token=0c636bbd-6054-4452-80cd-9268505e84d5'));
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
                                                "images/بلوفر.jpeg"))),
                                    Text("بلوفر ",
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
                            var Url1bl = Url1BL;
                            await BloverSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%A8%D9%84%D9%88%D9%81%D8%B1.mp3?alt=media&token=e094a8a8-cb65-46e4-8d45-d250a10f1413'));
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
                                          image: AssetImage("images/فوطة.png")),
                                    ),
                                    Text("فوطة ",
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
                            var url1f = Url1F;
                            await FutaSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%81%D9%88%D8%B7%D8%A9.mp3?alt=media&token=03ed807d-a7d0-4c79-b22a-241841e60993'));
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
                                                AssetImage("images/حزام.png"))),
                                    Text("حزام ",
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
                            var Url1be = Url1BE;
                            await BeltSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AD%D8%B2%D8%A7%D9%85.mp3?alt=media&token=6f88da5e-c5cc-462f-91aa-60e33e824952'));
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
                                                "images/بدلة.jfif"))),
                                    Text("بدلة ",
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
                            var url1su = Url1SU;
                            await SuitSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%A8%D8%AF%D9%84%D8%A9.mp3?alt=media&token=8fd04857-2ea5-427f-89ac-22ed614308e7'));
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
                                                "images/جزمة.jpeg"))),
                                    Text("جزمة ",
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
                            var url1sh = Url1SH;
                            await ShoesSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AC%D8%B2%D9%85%D8%A9.mp3?alt=media&token=f0e52f85-7b55-49b7-9cb2-363fc97aec44'));
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
