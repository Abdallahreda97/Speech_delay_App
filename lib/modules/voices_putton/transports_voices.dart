import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:speakup/internet/build_offline_builder.dart';

class transports_voices extends StatefulWidget {
  const transports_voices({super.key});

  @override
  State<transports_voices> createState() => _transports_voicesState();
}

class _transports_voicesState extends State<transports_voices> {
  final BoatSound = AudioPlayer();
  final SubmarineSound = AudioPlayer();
  final TruckSound = AudioPlayer();
  final ShipSound = AudioPlayer();
  final MotocycleSound = AudioPlayer();
  final CarSound = AudioPlayer();
  final BusSound = AudioPlayer();
  final BycleSound = AudioPlayer();
  final TrainSound = AudioPlayer();
  final PlaneSound = AudioPlayer();
  final Url1B = 'gs://speakup-430fa.appspot.com/مركب.mp3';
  final Url1S = 'gs://speakup-430fa.appspot.com/غواصة.mp3';
  final Url1T = 'gs://speakup-430fa.appspot.com/شاحنة.mp3';
  final Url1SH = 'gs://speakup-430fa.appspot.com/سفينة.mp3';
  final Url1M = 'gs://speakup-430fa.appspot.com/موتوسيكل.mp3';
  final Url1C = 'gs://speakup-430fa.appspot.com/عربية.mp3';
  final Url1BU = 'gs://speakup-430fa.appspot.com/اتوبيس.mp3';
  final Url1BY = 'gs://speakup-430fa.appspot.com/عجلة.mp3';
  final Url1TR = 'gs://speakup-430fa.appspot.com/قطر.mp3';
  final Url1P = 'gs://speakup-430fa.appspot.com/طايرة.mp3';
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
              "المواصلات ",
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
                                          image: AssetImage("images/مركب.jpg")),
                                    ),
                                    Text("مركب ",
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
                            await BoatSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%85%D8%B1%D9%83%D8%A8.mp3?alt=media&token=4295811d-1d87-4279-9051-ebc562747d15'));
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
                                                AssetImage("images/غواصة.jpg"))),
                                    Text("غواصة ",
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
                            await SubmarineSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%BA%D9%88%D8%A7%D8%B5%D8%A9.mp3?alt=media&token=007e2167-397d-4d15-9c81-307fbda0168d'));
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
                                            height: 170,
                                            image:
                                                AssetImage("images/شاحنة.jfif"))),
                                    Text("شاحنة ",
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
                            await TruckSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B4%D8%A7%D8%AD%D9%86%D8%A9.mp3?alt=media&token=712bc828-da7f-4424-927c-846f0ece0a08'));
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
                                          image: AssetImage("images/سفينة.png")),
                                    ),
                                    Text("سفينة ",
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
                            var Url1sh = Url1SH;
                            await ShipSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B3%D9%81%D9%8A%D9%86%D8%A9.mp3?alt=media&token=1ba3c6d5-da33-4f69-b23c-b12c3dd9fb4c'));
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
                                            image: AssetImage(
                                                "images/موتوسيكل.jpg"))),
                                    Text("موتوسيكل ",
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
                            var Url1m = Url1M;
                            await MotocycleSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%85%D9%88%D8%AA%D9%88%D8%B3%D9%8A%D9%83%D9%84.mp3?alt=media&token=0e0de186-6010-43a9-b3b2-003176a6f74c'));
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
                                            height: 170,
                                            image:
                                                AssetImage("images/عربية.jfif"))),
                                    Text("عربية ",
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
                            await CarSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B9%D8%B1%D8%A8%D9%8A%D8%A9.mp3?alt=media&token=de31ce3b-8caa-4de1-a1ca-3d4e5032d7dd'));
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
                                              AssetImage("images/اتوبيس.jfif")),
                                    ),
                                    Text("اتوبيس ",
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
                            var url1bu = Url1BU;
                            await BusSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%A7%D8%AA%D9%88%D8%A8%D9%8A%D8%B3.mp3?alt=media&token=08ae2907-8cce-45d3-88b8-c6de7d690847'));
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
                                                AssetImage("images/عجلة.png"))),
                                    Text("عجلة ",
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
                            var Url1by = Url1BY;
                            await BycleSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B9%D8%AC%D9%84%D8%A9.mp3?alt=media&token=1e732610-d225-4553-bfba-e78066179204'));
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
                                            image: AssetImage("images/قطر.jpg"))),
                                    Text("قطر ",
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
                            var url1tr = Url1TR;
                            await TrainSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D9%82%D8%B7%D8%B1.mp3?alt=media&token=69747440-fd16-4f1c-94c3-1f3fe93dfdcb'));
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
                                            height: 320,
                                            image:
                                                AssetImage("images/طائرة.jfif"))),
                                    Text("طائرة ",
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
                            var url1p = Url1P;
                            await PlaneSound.play(UrlSource(
                                'https://firebasestorage.googleapis.com/v0/b/speakup-430fa.appspot.com/o/%D8%B7%D8%A7%D9%8A%D8%B1%D8%A9.mp3?alt=media&token=dc6e1506-8775-4bd8-8d29-9186550b5cf9'));
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
