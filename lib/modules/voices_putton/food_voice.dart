import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:speakup/internet/build_offline_builder.dart';

class food_voice extends StatefulWidget {
  const food_voice({super.key});

  @override
  State<food_voice> createState() => _food_voiceState();
}

class _food_voiceState extends State<food_voice> {
  final WaterSound = AudioPlayer();
  final SaltSound = AudioPlayer();
  final JuiceSound = AudioPlayer();
  final MeatSound = AudioPlayer();
  final BiscuitsSound = AudioPlayer();
  final EggSound = AudioPlayer();
  final MilkSound = AudioPlayer();
  final PotatoesSound = AudioPlayer();
  final MacaroniSound = AudioPlayer();
  final BeanSound = AudioPlayer();
  final Url1W = 'gs://speakup-430fa.appspot.com/مياة.mp3'; // File location.
  final Url1S = 'gs://speakup-430fa.appspot.com/ملح.mp3';
  final Url1J = 'gs://speakup-430fa.appspot.com/عصير.mp3';
  final Url1M = 'gs://speakup-430fa.appspot.com/لحمة.mp3';
  final Url1B = 'gs://speakup-430fa.appspot.com/بسكوت.mp3';
  final Url1E = 'gs://speakup-430fa.appspot.com/بيضة.mp3';
  final Url1MI = 'gs://speakup-430fa.appspot.com/لبن.mp3';
  final Url1P = 'gs://speakup-430fa.appspot.com/بطاطس.mp3';
  final Url1MA = 'gs://speakup-430fa.appspot.com/مكرونة.mp3';
  final Url1BE = 'gs://speakup-430fa.appspot.com/فول.mp3';
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
              "الطعام ",
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
                                          image:
                                              AssetImage("images/مياه.jpeg")),
                                    ),
                                    Text("مياه ",
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
                            var Url1w = Url1W;
                            await WaterSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%85%D9%8A%D8%A7%D8%A9.mp3?alt=media&token=e099ac25-cfa5-48a8-8d62-64459feadee0'));
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
                                                AssetImage("images/ملح.jpeg"))),
                                    Text("ملح ",
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
                            await SaltSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%85%D9%84%D8%AD.mp3?alt=media&token=193b99b9-ed27-496d-bb5a-891c0c5ac242'));
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
                                                "images/عصير.jpeg"))),
                                    Text("عصير ",
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
                            await JuiceSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B9%D8%B5%D9%8A%D8%B1.mp3?alt=media&token=ff4d96ac-f27d-45ab-919f-d8aacdec9c8b'));
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
                                          image: AssetImage("images/لحمة.png")),
                                    ),
                                    Text("لحمة ",
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
                            var Url2m = Url1M;
                            await MeatSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%84%D8%AD%D9%85%D8%A9.mp3?alt=media&token=76d81111-c4fc-45b0-abcf-9cd6d74b3d32'));
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
                                                "images/بسكوت.jpeg"))),
                                    Text("بسكوت ",
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
                            await BiscuitsSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%A8%D8%B3%D9%83%D9%88%D8%AA.mp3?alt=media&token=0e80769d-4229-48b9-b30b-9e0f017a6632'));
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
                                                "images/بيضة.jpeg"))),
                                    Text("بيضة ",
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
                            var Url1e = Url1E;
                            await EggSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%A8%D9%8A%D8%B6%D8%A9.mp3?alt=media&token=1b52fe89-3239-4db8-a2a6-0d642c62bb85'));
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
                                          image: AssetImage("images/لبن.png")),
                                    ),
                                    Text("لبن ",
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
                            await MilkSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%84%D8%A8%D9%86.mp3?alt=media&token=117fa667-a905-45c7-a263-e7af2fccb3d4'));
                          }
                        })),
                    Divider(
                      height: 30,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.orange,
                    ),
                    // Bounce(
                    //     duration: Duration(milliseconds: 110),
                    //     child: Padding(
                    //       padding: const EdgeInsets.only(top: 20),
                    //       child: Container(
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //           children: [
                    //             Column(
                    //               children: [
                    //                 Container(
                    //                     child: Image(
                    //                         height: 150,
                    //                         image: AssetImage(
                    //                             "images/بطاطس.png"))),
                    //                 Text("بطاطس ",
                    //                     style: TextStyle(
                    //                       fontSize: 30,
                    //                     ))
                    //               ],
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //     onPressed: (() async {
                    //       {
                    //         var Url1p = Url1P;
                    //         await PotatoesSound.play(UrlSource(
                    //             'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%A8%D8%B7%D8%A7%D8%B7%D8%B3.mp3?alt=media&token=94c40195-cef9-434f-a264-dfb19986fab9'));
                    //       }
                    //     })),
                    // Divider(
                    //   height: 30,
                    //   thickness: 1,
                    //   indent: 20,
                    //   endIndent: 20,
                    //   color: Colors.orange,
                    // ),
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
                                                "images/معكرونة.jpeg"))),
                                    Text("معكرونة ",
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
                            var url1ma = Url1MA;
                            await MacaroniSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%85%D9%83%D8%B1%D9%88%D9%86%D8%A9.mp3?alt=media&token=80d03807-a70d-48ec-b18d-6a0613e877cb'));
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
                                                AssetImage("images/فول.jpeg"))),
                                    Text("فول ",
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
                            var url1be = Url1BE;
                            await BeanSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%81%D9%88%D9%84.mp3?alt=media&token=694d3dd4-efd4-42c8-85c3-c24d892f5bbd'));
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
