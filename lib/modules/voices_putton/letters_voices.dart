import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:speakup/internet/build_offline_builder.dart';

class letters_voices extends StatefulWidget {
  const letters_voices({super.key});

  @override
  State<letters_voices> createState() => _letters_voicesState();
}

class _letters_voicesState extends State<letters_voices> {
  final Letter1Sound = AudioPlayer();
  final Letter2Sound = AudioPlayer();
  final Letter3Sound = AudioPlayer();
  final Letter4Sound = AudioPlayer();
  final Letter5Sound = AudioPlayer();
  final Letter6Sound = AudioPlayer();
  final Letter7Sound = AudioPlayer();
  final Letter8Sound = AudioPlayer();
  final Letter9Sound = AudioPlayer();
  final Letter10Sound = AudioPlayer();
  final Letter11Sound = AudioPlayer();
  final Letter12Sound = AudioPlayer();
  final Letter13Sound = AudioPlayer();
  final Letter14Sound = AudioPlayer();
  final Letter15Sound = AudioPlayer();
  final Letter16Sound = AudioPlayer();
  final Letter17Sound = AudioPlayer();
  final Letter18Sound = AudioPlayer();
  final Letter19Sound = AudioPlayer();
  final Letter20Sound = AudioPlayer();
  final Letter21Sound = AudioPlayer();
  final Letter22Sound = AudioPlayer();
  final Letter23Sound = AudioPlayer();
  final Letter24Sound = AudioPlayer();
  final Letter25Sound = AudioPlayer();
  final Letter26Sound = AudioPlayer();
  final Letter27Sound = AudioPlayer();
  final Letter28Sound = AudioPlayer();
  final Url1LE1 = 'gs://speakup-430fa.appspot.com/الف.mp3';
  final Url1LE2 = 'gs://speakup-430fa.appspot.com/باء.mp3';
  final Url1LE3 = 'gs://speakup-430fa.appspot.com/تاء.mp3';
  final Url1LE4 = 'gs://speakup-430fa.appspot.com/ثاء.mp3';
  final Url1LE5 = 'gs://speakup-430fa.appspot.com/جيم.mp3';
  final Url1LE6 = 'gs://speakup-430fa.appspot.com/حاء.mp3';
  final Url1LE7 = 'gs://speakup-430fa.appspot.com/خاء.mp3';
  final Url1LE8 = 'gs://speakup-430fa.appspot.com/دال.mp3';
  final Url1LE9 = 'gs://speakup-430fa.appspot.com/ذال.mp3';
  final Url1LE10 = 'gs://speakup-430fa.appspot.com/راء.mp3';
  final Url1LE11 = 'gs://speakup-430fa.appspot.com/زاي.mp3';
  final Url1LE12 = 'gs://speakup-430fa.appspot.com/سين.mp3';
  final Url1LE13 = 'gs://speakup-430fa.appspot.com/شين.mp3';
  final Url1LE14 = 'gs://speakup-430fa.appspot.com/صاد.mp3';
  final Url1LE15 = 'gs://speakup-430fa.appspot.com/ضاد.mp3';
  final Url1LE16 = 'gs://speakup-430fa.appspot.com/طاء.mp3';
  final Url1LE17 = 'gs://speakup-430fa.appspot.com/ظاء.mp3';
  final Url1LE18 = 'gs://speakup-430fa.appspot.com/عين.mp3';
  final Url1LE19 = 'gs://speakup-430fa.appspot.com/غين.mp3';
  final Url1LE20 = 'gs://speakup-430fa.appspot.com/فاء.dat.mp3';
  final Url1LE21 = 'gs://speakup-430fa.appspot.com/قاف.mp3';
  final Url1LE22 = 'gs://speakup-430fa.appspot.com/كاف.mp3';
  final Url1LE23 = 'gs://speakup-430fa.appspot.com/لام.mp3';
  final Url1LE24 = 'gs://speakup-430fa.appspot.com/ميم.mp3';
  final Url1LE25 = 'gs://speakup-430fa.appspot.com/نون.mp3';
  final Url1LE26 = 'gs://speakup-430fa.appspot.com/هاء.dat.mp3';
  final Url1LE27 = 'gs://speakup-430fa.appspot.com/واو.mp3';
  final Url1LE28 = 'gs://speakup-430fa.appspot.com/ياء.mp3';
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
              "الحروف ",
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
                                          height: 150,
                                          image: AssetImage("images/أ.jpeg")),
                                    ),
                                    Text("ألف ",
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
                            var Url1le1 = Url1LE1;
                            await Letter1Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%A7%D9%84%D9%81.mp3?alt=media&token=87f12904-d713-4c9a-8504-cad91046a340'));
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
                                            image:
                                                AssetImage("images/ب.jpeg"))),
                                    Text("باء ",
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
                            var Url1le2 = Url1LE2;
                            await Letter2Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%A8%D8%A7%D8%A1.mp3?alt=media&token=c97f662f-7829-46dd-b526-a07803f57d11'));
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
                                            image:
                                                AssetImage("images/ت.jpeg"))),
                                    Text("تاء ",
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
                            var Url1le3 = Url1LE3;
                            await Letter3Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AA%D8%A7%D8%A1.mp3?alt=media&token=9721202c-2375-46f2-a0e4-ff41732930dc'));
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
                                          image: AssetImage("images/ث.jpeg")),
                                    ),
                                    Text("ثاء ",
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
                            var Url1le4 = Url1LE4;
                            await Letter4Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AB%D8%A7%D8%A1.mp3?alt=media&token=ad6eb3de-bf88-46b8-94d1-c3dc351e1a71'));
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
                                            image:
                                                AssetImage("images/ج.jpeg"))),
                                    Text("جيم ",
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
                            var Urlle5 = Url1LE5;
                            await Letter5Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AC%D9%8A%D9%85.mp3?alt=media&token=ebb8253b-bc59-4a08-86c4-5bf04100b871'));
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
                                            image:
                                                AssetImage("images/ح.jpeg"))),
                                    Text("حاء ",
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
                            var Url1le6 = Url1LE6;
                            await Letter6Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AD%D8%A7%D8%A1.mp3?alt=media&token=b6f31558-c8dc-42c7-91e0-f99c676db1c8'));
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
                                          image: AssetImage("images/خ.jpeg")),
                                    ),
                                    Text("خاء ",
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
                            var url1le7 = Url1LE7;
                            await Letter7Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AE%D8%A7%D8%A1.mp3?alt=media&token=9454dc1a-c3b7-4ede-a9f1-d56f27b12ea5'));
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
                                            image:
                                                AssetImage("images/د.jpeg"))),
                                    Text("دال ",
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
                            var Url1le8 = Url1LE8;
                            await Letter8Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AF%D8%A7%D9%84.mp3?alt=media&token=0f90cca0-f822-4cac-8480-30d0daa306f8'));
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
                                            image:
                                                AssetImage("images/ذ.jpeg"))),
                                    Text("ذال ",
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
                            var url1le9 = Url1LE9;
                            await Letter9Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B0%D8%A7%D9%84.mp3?alt=media&token=9f478678-9d13-40fb-9fbc-0c5589bb861a'));
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
                                            image:
                                                AssetImage("images/ر.jpeg"))),
                                    Text("راء ",
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
                            var url1le10 = Url1LE10;
                            await Letter10Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B1%D8%A7%D8%A1.mp3?alt=media&token=ccae4176-81af-448e-8c32-01957dc1698e'));
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
                                          image: AssetImage("images/ز.jpeg")),
                                    ),
                                    Text("زاى ",
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
                            var Url1le11 = Url1LE11;
                            await Letter11Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B2%D8%A7%D9%8A.mp3?alt=media&token=6592ad74-b0e3-4e6b-bef6-59eddd834556'));
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
                                            image:
                                                AssetImage("images/س.jpeg"))),
                                    Text("سين ",
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
                            var Url1le12 = Url1LE12;
                            await Letter12Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B3%D9%8A%D9%86.mp3?alt=media&token=f8fdddd3-ff95-4d28-b0e7-79bc6763b69b'));
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
                                            image:
                                                AssetImage("images/ش.jpeg"))),
                                    Text("شين ",
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
                            var Urlle13 = Url1LE13;
                            await Letter13Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B4%D9%8A%D9%86.mp3?alt=media&token=5ce8485d-f668-4b8a-b1b1-08ee8ee6a57b'));
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
                                          image: AssetImage("images/ص.jpeg")),
                                    ),
                                    Text("صاد ",
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
                            var Url1le14 = Url1LE14;
                            await Letter14Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B5%D8%A7%D8%AF.mp3?alt=media&token=12e57e7a-4aa2-47ba-9bd2-1cceed6824cb'));
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
                                            image:
                                                AssetImage("images/ض.jpeg"))),
                                    Text("ضاد ",
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
                            var Url1le15 = Url1LE15;
                            await Letter15Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B6%D8%A7%D8%AF.mp3?alt=media&token=34ca3b49-0440-401e-b2e5-13fb789bfbe6'));
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
                                            image:
                                                AssetImage("images/ط.jpeg"))),
                                    Text("طاء ",
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
                            var Url1le16 = Url1LE16;
                            await Letter16Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B7%D8%A7%D8%A1.mp3?alt=media&token=46cdf42c-44a8-42b5-9f34-0049176995a7'));
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
                                          image: AssetImage("images/ظ.jpeg")),
                                    ),
                                    Text("ظاء ",
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
                            var url1le17 = Url1LE17;
                            await Letter17Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B8%D8%A7%D8%A1.mp3?alt=media&token=06edb197-b49a-4958-bc29-36138030684c'));
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
                                            image:
                                                AssetImage("images/ع.jpeg"))),
                                    Text("عين ",
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
                            var Url1le18 = Url1LE18;
                            await Letter18Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B9%D9%8A%D9%86.mp3?alt=media&token=d26d049b-9384-4a67-92a9-1b2c878fbf5f'));
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
                                            image:
                                                AssetImage("images/غ.jpeg"))),
                                    Text("غين ",
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
                            var url1le19 = Url1LE19;
                            await Letter19Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%BA%D9%8A%D9%86.mp3?alt=media&token=c5f7eb87-fc35-4c7b-ab39-073c53a96a42'));
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
                                            image:
                                                AssetImage("images/ف.jpeg"))),
                                    Text("فاء ",
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
                            var url1le20 = Url1LE20;
                            await Letter20Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%81%D8%A7%D8%A1.dat.mp3?alt=media&token=16a6f1c1-ea05-4b73-9f03-8ebea877198e'));
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
                                          image: AssetImage("images/ق.jpeg")),
                                    ),
                                    Text("قاف ",
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
                            var Url1le21 = Url1LE21;
                            await Letter21Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%82%D8%A7%D9%81.mp3?alt=media&token=d525998a-b9a6-462c-bb65-f7df9a03978b'));
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
                                            image:
                                                AssetImage("images/ك.jpeg"))),
                                    Text("كاف ",
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
                            var Url1le22 = Url1LE22;
                            await Letter22Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%83%D8%A7%D9%81.mp3?alt=media&token=c8c5cfe1-fd24-45ab-ad9e-60ea712fa34d'));
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
                                            image:
                                                AssetImage("images/ل.jpeg"))),
                                    Text("لام ",
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
                            var Url1le23 = Url1LE23;
                            await Letter23Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%84%D8%A7%D9%85.mp3?alt=media&token=42e294aa-28dd-4c8f-b09a-740905e75b0a'));
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
                                          image: AssetImage("images/م.jpeg")),
                                    ),
                                    Text("ميم ",
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
                            var Url1le24 = Url1LE24;
                            await Letter24Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%85%D9%8A%D9%85.mp3?alt=media&token=eb79488d-3836-43a3-8fc4-3f8f11974926'));
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
                                            image:
                                                AssetImage("images/ن.jpeg"))),
                                    Text("نون ",
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
                            var Url1le25 = Url1LE25;
                            await Letter25Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%86%D9%88%D9%86.mp3?alt=media&token=d5e134b3-89e0-4b4f-80ba-d59563125ef1'));
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
                                            image:
                                                AssetImage("images/ه.jpeg"))),
                                    Text("هاء ",
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
                            var Url1le26 = Url1LE26;
                            await Letter26Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%87%D8%A7%D8%A1.dat.mp3?alt=media&token=34a940ec-50b1-4b7b-8fac-c3c80c7e2af4'));
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
                                          image: AssetImage("images/واو.jpeg")),
                                    ),
                                    Text("واو ",
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
                            var url1le27 = Url1LE27;
                            await Letter27Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%88%D8%A7%D9%88.mp3?alt=media&token=cb136e09-f1a1-4aa4-946f-205c5340c31d'));
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
                                            image:
                                                AssetImage("images/ي.jpeg"))),
                                    Text("ياء ",
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
                            var Url1le28 = Url1LE28;
                            await Letter28Sound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%8A%D8%A7%D8%A1.mp3?alt=media&token=ef874b08-923f-4435-ad71-5cb35ac148d9'));
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
