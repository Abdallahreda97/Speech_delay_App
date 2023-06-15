import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:speakup/internet/build_offline_builder.dart';

class vegetables_voices extends StatefulWidget {
  const vegetables_voices({super.key});

  @override
  State<vegetables_voices> createState() => _vegetables_voicesState();
}

class _vegetables_voicesState extends State<vegetables_voices> {
  final TomatoesSound = AudioPlayer();
  final khairSound = AudioPlayer();
  final CarrotSound = AudioPlayer();
  final LemonSound = AudioPlayer();
  final PotatoesSound = AudioPlayer();
  final KosaSound = AudioPlayer();
  final BeansSound = AudioPlayer();
  final BroccoliSound = AudioPlayer();
  final CauliflowerSound = AudioPlayer();
  final CabbageSound = AudioPlayer();
  final Url1T = 'gs://speakup-430fa.appspot.com/طماطم.mp3';
  final Url1K = 'gs://speakup-430fa.appspot.com/خيار.mp3';
  final Url1CA = 'gs://speakup-430fa.appspot.com/جزر.mp3';
  final Url1L = 'gs://speakup-430fa.appspot.com/ليمون.mp3';
  final Url1P = 'gs://speakup-430fa.appspot.com/بطاطس.mp3';
  final Url1KO = 'gs://speakup-430fa.appspot.com/كوسة.mp3';
  final Url1BE = 'gs://speakup-430fa.appspot.com/فاصوليا.mp3';
  final Url1BR = 'gs://speakup-430fa.appspot.com/بروكلي.mp3';
  final Url1CF = 'gs://speakup-430fa.appspot.com/قرنبيط.mp3';
  final Url1CG = 'gs://speakup-430fa.appspot.com/كرنب.mp3';
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
              "الخضروات ",
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
                                          height: 200,
                                          image: AssetImage("images/طماطم.png")),
                                    ),
                                    Text("طماطم ",
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
                            await TomatoesSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B7%D9%85%D8%A7%D8%B7%D9%85.mp3?alt=media&token=a230fac7-fc0b-47d3-96c5-e96dd61c2cad'));
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
                                                AssetImage("images/خيار.png"))),
                                    Text("خيار ",
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
                            var Url1k = Url1K;
                            await khairSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AE%D9%8A%D8%A7%D8%B1.mp3?alt=media&token=00c7e774-e026-4b0c-be94-597a9f06b928'));
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
                                                AssetImage("images/جزر.jpeg"))),
                                    Text("جزر ",
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
                            var Urlca = Url1CA;
                            await CarrotSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%AC%D8%B2%D8%B1.mp3?alt=media&token=e2d220f3-4ee2-4b48-9a88-f63a960ad110'));
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
                                          image: AssetImage("images/ليمون.jpeg")),
                                    ),
                                    Text("ليمون ",
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
                            await LemonSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%84%D9%8A%D9%85%D9%88%D9%86.mp3?alt=media&token=4beadd4c-07e9-459c-a60b-91848ec29749'));
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
                                            height: 180,
                                            image:
                                                AssetImage("images/بطاطس.png"))),
                                    Text("بطاطس ",
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
                            await PotatoesSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%A8%D8%B7%D8%A7%D8%B7%D8%B3.mp3?alt=media&token=6a448f54-3238-4315-a1dd-181327a37e03'));
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
                                                AssetImage("images/كوسة.jpeg"))),
                                    Text("كوسة ",
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
                            var Url1ko = Url1KO;
                            await KosaSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%83%D9%88%D8%B3%D8%A9.mp3?alt=media&token=2c9dbc66-4f18-4de9-bbef-2806dd1e8f2b'));
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
                                          image:
                                              AssetImage("images/فاصوليا.jpeg")),
                                    ),
                                    Text("فاصوليا ",
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
                            var url1pe =Url1BE;
                            await BeansSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%81%D8%A7%D8%B5%D9%88%D9%84%D9%8A%D8%A7.mp3?alt=media&token=a37020ac-7c0b-49a7-90fa-9a8ec181bf89'));
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
                                                AssetImage("images/بروكلى.png"))),
                                    Text("بروكلى ",
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
                            var Url1br = Url1BR;
                            await BroccoliSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%A8%D8%B1%D9%88%D9%83%D9%84%D9%8A.mp3?alt=media&token=17ecb07b-8626-4f73-9ac2-87ba33bae5ae'));
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
                                                AssetImage("images/كرنب.png"))),
                                    Text("قرنبيط ",
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
                            var url1cf = Url1CF;
                            await CauliflowerSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%82%D8%B1%D9%86%D8%A8%D9%8A%D8%B7.mp3?alt=media&token=ffee6622-0fe9-4076-a777-0656df3b5323'));
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
                                                AssetImage("images/قرنبيط.png"))),
                                    Text("كرنب ",
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
                            var url1cg = Url1CG;
                            await CabbageSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%83%D8%B1%D9%86%D8%A8.mp3?alt=media&token=4bd8b837-becd-4597-bec6-e0769728f876'));
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