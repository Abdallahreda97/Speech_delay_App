import 'dart:ui';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:speakup/internet/build_offline_builder.dart';
import 'package:speakup/modules/Advice%20Screen/AdviceScreen.dart';
import 'package:speakup/modules/Advice%20Screen/TimerScreen.dart';
import 'package:speakup/modules/Animals%20Voices/2-dog.dart';
import 'package:speakup/modules/Cartoons/Cartoon.dart';
import 'package:speakup/modules/Letters%20Voice/1-%D8%A3%D9%8E.dart';
import 'package:speakup/modules/Login%20Screen/LoginScreen.dart';
import 'package:speakup/modules/Sentences%20Voices/Road%20map%20sentences%20voices.dart';
import 'package:speakup/modules/Sentences%20Voices/hungry.dart';
import 'package:speakup/modules/Words%20Voices/Road%20map%20words%20voices.dart';
import 'package:speakup/modules/Words%20Voices/all%20numbers/number1.dart';
import 'package:speakup/modules/Words%20Voices/feeling/agreement.dart';
import 'package:speakup/modules/Words%20Voices/feeling/bad.dart';
import 'package:speakup/modules/Words%20Voices/feeling/dis%20like.dart';
import 'package:speakup/modules/Words%20Voices/feeling/fantastic.dart';
import 'package:speakup/modules/Words%20Voices/feeling/film.dart';
import 'package:speakup/modules/Words%20Voices/feeling/like.dart';
import 'package:speakup/modules/Words%20Voices/feeling/this.dart';
import 'package:speakup/modules/help-page/help-page.dart';
import 'package:speakup/modules/voices_putton/voices_putton_main.dart';
import '../../transition.dart';
import '../Animals Voices/1-cat.dart';
import '../Animals Voices/Road map Animals Voices.dart';
import '../Final Celebration/Finalcelebration.dart';
import '../Letters Voice/10-ثَ.dart';
import '../Letters Voice/11-ثِ.dart';
import '../Letters Voice/12-ثُ.dart';
import '../Letters Voice/13-جَ.dart';
import '../Letters Voice/14-جِ.dart';
import '../Letters Voice/15-جُ.dart';
import '../Letters Voice/16-حَ.dart';
import '../Letters Voice/17-حِ.dart';
import '../Letters Voice/18-حُ.dart';
import '../Letters Voice/19-خَ.dart';
import '../Letters Voice/2-إِ.dart';
import '../Letters Voice/20-خِ.dart';
import '../Letters Voice/21-خُ.dart';
import '../Letters Voice/22-دَ.dart';
import '../Letters Voice/23-دِ.dart';
import '../Letters Voice/24-دُ.dart';
import '../Letters Voice/25-ذَ.dart';
import '../Letters Voice/26-ذِ.dart';
import '../Letters Voice/27-ذُ.dart';
import '../Letters Voice/28-رَ.dart';
import '../Letters Voice/29-رِ.dart';
import '../Letters Voice/3-أُ.dart';
import '../Letters Voice/30-رُ.dart';
import '../Letters Voice/31-زَ.dart';
import '../Letters Voice/32-زِ.dart';
import '../Letters Voice/33-زُ.dart';
import '../Letters Voice/34-سَ.dart';
import '../Letters Voice/35-سِ.dart';
import '../Letters Voice/36-سُ.dart';
import '../Letters Voice/37-شَ.dart';
import '../Letters Voice/38-شِ.dart';
import '../Letters Voice/39-شُ.dart';
import '../Letters Voice/4-بَ.dart';
import '../Letters Voice/40-صَ.dart';
import '../Letters Voice/41-صِ.dart';
import '../Letters Voice/42-صُ.dart';
import '../Letters Voice/43-ضَ.dart';
import '../Letters Voice/44-ضِ.dart';
import '../Letters Voice/45-ضُ.dart';
import '../Letters Voice/46-طَ.dart';
import '../Letters Voice/47-طِ.dart';
import '../Letters Voice/48-طُ.dart';
import '../Letters Voice/49-ظَ.dart';
import '../Letters Voice/5-بِ.dart';
import '../Letters Voice/50-ظِ.dart';
import '../Letters Voice/51-ظُ.dart';
import '../Letters Voice/52-عَ.dart';
import '../Letters Voice/53-عِ.dart';
import '../Letters Voice/54-عُ.dart';
import '../Letters Voice/55-غَ.dart';
import '../Letters Voice/56-غِ.dart';
import '../Letters Voice/57-غُ.dart';
import '../Letters Voice/58-فَ.dart';
import '../Letters Voice/59-فِ.dart';
import '../Letters Voice/6-بُ.dart';
import '../Letters Voice/60-فُ.dart';
import '../Letters Voice/61-قَ.dart';
import '../Letters Voice/62-قِ.dart';
import '../Letters Voice/63-قُ.dart';
import '../Letters Voice/64-كَ.dart';
import '../Letters Voice/65-كِ.dart';
import '../Letters Voice/66-كُ.dart';
import '../Letters Voice/67-لَ.dart';
import '../Letters Voice/68-لِ.dart';
import '../Letters Voice/69-لُ.dart';
import '../Letters Voice/7-تَ.dart';
import '../Letters Voice/70-مَ.dart';
import '../Letters Voice/71-مِ.dart';
import '../Letters Voice/72-مُ.dart';
import '../Letters Voice/73-نَ.dart';
import '../Letters Voice/74-نِ.dart';
import '../Letters Voice/75-نُ.dart';
import '../Letters Voice/76-هَ.dart';
import '../Letters Voice/77-هِ.dart';
import '../Letters Voice/78-هُ.dart';
import '../Letters Voice/79-وَ.dart';
import '../Letters Voice/8-تِ.dart';
import '../Letters Voice/80-وِ.dart';
import '../Letters Voice/81-وُ.dart';
import '../Letters Voice/82-ىَ.dart';
import '../Letters Voice/83-ىِ.dart';
import '../Letters Voice/84-ىُ.dart';
import '../Letters Voice/9-تُ.dart';
import '../Letters Voice/Road map letters voices.dart';
import '../Sentences Voices/good by.dart';
import '../Sentences Voices/good evening.dart';
import '../Sentences Voices/good morning.dart';
import '../Sentences Voices/how are you.dart';
import '../Sentences Voices/i_want_to_go_out.dart';
import '../Sentences Voices/i_want_to_play.dart';
import '../Sentences Voices/im_good.dart';
import '../Sentences Voices/im_happy.dart';
import '../Sentences Voices/im_sad.dart';
import '../Sentences Voices/im_sleepy.dart';
import '../Sentences Voices/im_sorry.dart';
import '../Sentences Voices/im_thirsty.dart';
import '../Sentences Voices/love.dart';
import '../Sentences Voices/welcome.dart';
import '../Signup Screen/Signup Screen.dart';
import '../Words Voices/actions/close.dart';
import '../Words Voices/actions/move.dart';
import '../Words Voices/actions/open.dart';
import '../Words Voices/actions/receive.dart';
import '../Words Voices/actions/remove.dart';
import '../Words Voices/actions/send.dart';
import '../Words Voices/actions/start.dart';
import '../Words Voices/actions/wait.dart';
import '../Words Voices/all numbers/number2.dart';
import '../Words Voices/all numbers/number3.dart';
import '../Words Voices/all numbers/number4.dart';
import '../Words Voices/all numbers/number5.dart';
import '../Words Voices/all numbers/number6.dart';
import '../Words Voices/all numbers/number7.dart';
import '../Words Voices/all numbers/number8.dart';
import '../Words Voices/all numbers/number9.dart';
import '../Words Voices/feeling/agree.dart';
import '../Words Voices/feeling/no.dart';
import '../Words Voices/feeling/yes.dart';
import '../Words Voices/nouns/direction.dart';
import '../Words Voices/nouns/eye.dart';
import '../Words Voices/nouns/next.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  bool isLoading = false;
  var emailController = TextEditingController();
  var Advice;
  var Screen32;
  var userrrAnimal1;
  var userrrAnimal2;
  var Letter1;
  var Letter2;
  var Letter3;
  var Letter4;
  var Letter5;
  var Letter6;
  var Letter7;
  var Letter8;
  var Letter9;
  var Letter10;
  var Letter11;
  var Letter12;
  var Letter13;
  var Letter14;
  var Letter15;
  var Letter16;
  var Letter17;
  var Letter18;
  var Letter19;
  var Letter20;
  var Letter21;
  var Letter22;
  var Letter23;
  var Letter24;
  var Letter25;
  var Letter26;
  var Letter27;
  var Letter28;
  var Letter29;
  var Letter30;
  var Letter31;
  var Letter32;
  var Letter33;
  var Letter34;
  var Letter35;
  var Letter36;
  var Letter37;
  var Letter38;
  var Letter39;
  var Letter40;
  var Letter41;
  var Letter42;
  var Letter43;
  var Letter44;
  var Letter45;
  var Letter46;
  var Letter47;
  var Letter48;
  var Letter49;
  var Letter50;
  var Letter51;
  var Letter52;
  var Letter53;
  var Letter54;
  var Letter55;
  var Letter56;
  var Letter57;
  var Letter58;
  var Letter59;
  var Letter60;
  var Letter61;
  var Letter62;
  var Letter63;
  var Letter64;
  var Letter65;
  var Letter66;
  var Letter67;
  var Letter68;
  var Letter69;
  var Letter70;
  var Letter71;
  var Letter72;
  var Letter73;
  var Letter74;
  var Letter75;
  var Letter76;
  var Letter77;
  var Letter78;
  var Letter79;
  var Letter80;
  var Letter81;
  var Letter82;
  var Letter83;
  var Letter84;
  //var userrrAdvice;
  var userrr1;
  var userrr2;
  var userrr3;
  var userrr4;
  var userrr5;
  var userrr6;
  var userrr7;
  var userrr8;
  var userrr9;
  var userrr100;
  var userrr101;
  var userrr102;
  var userrr103;
  var userrr104;
  var userrr105;
  var userrr106;
  var userrr107;
  var userrr108;
  var userrr109;
  var userrr110;
  var userrr111;
  var userrr112;
  var userrr113;
  var userrr114;
  var userrr115;
  var userrr116;
  var userrr117;
  var userrr118;
  var userrr119;
  var userrr120;
  var Sentences1;
  var Sentences2;
  var Sentences3;
  var Sentences4;
  var Sentences5;
  var Sentences6;
  var Sentences7;
  var Sentences8;
  var Sentences9;
  var Sentences10;
  var Sentences11;
  var Sentences12;
  var Sentences13;
  var Sentences14;
  var Sentences15;
  final Url22 =
      'gs://speakup-430fa.appspot.com/New_Snapchat_notification_sound_2019.mp3'; // file location
  final sound = AudioPlayer();
  // final EmailUser =
  //     FirebaseAuth.instance.currentUser?.email; // get the email of the user.
  int id0 = 0;
  //final UserName = FirebaseAuth.instance.currentUser?.displayName;
  var userrrAdvice;
  SaveDataAdvice() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('id0', 0);
    print("Success");
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: BuildOfflineBuilder(
            screen: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                centerTitle: true,
                title: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Speak Up',
                      speed: Duration(milliseconds: 150),
                      textStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                                color: Colors.black,
                                blurRadius: 10,
                                offset: Offset(0, 2))
                          ]),
                    ),
                  ],
                  isRepeatingAnimation: true,
                  repeatForever: true,
                  displayFullTextOnTap: true,
                  stopPauseOnTap: false,
                ),
                backgroundColor: Colors.orange,
                elevation: 0,
              ),
              drawerScrimColor: Colors.yellow.withOpacity(0.7),
              drawer: Drawer(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Column(
                  children: [
                    UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                      ),
                      accountName: Text('Speak Up'),
                      accountEmail: Text(''),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage('images/baby.jpg'),
                      ),
                    ),
                    ListTile(
                      title: Text("مساعدة"),
                      leading: Icon(Icons.help),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => helpPage(),
                          ),
                        );
                      },
                    )
                    // ,ListTile(
                    //   title: Text("COMMAND"),
                    //   leading: Icon(Icons.help),
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => close(),
                    //       ),
                    //     );
                    //   },
                    // )
                    // ,ListTile(
                    //   title: Text("VOCALS"),
                    //   leading: Icon(Icons.help),
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => bad(),
                    //       ),
                    //     );
                    //   },
                    // )
                    // ,ListTile(
                    //   title: Text("PHRASES"),
                    //   leading: Icon(Icons.help),
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => good_morning(),
                    //       ),
                    //     );
                    //   },
                    // ),
                    // ListTile(
                    //   title: Text("تسجيل الخروج"),
                    //   leading: Icon(Icons.logout),
                    //   onTap: (() {
                    //     SignOut();

                    //     Navigator.push(
                    //       context,
                    //       myPageTransition(
                    //         SignUp(),
                    //       ),
                    //     );
                    //   }),
                    // )
                  ],
                ),
              ),
              body: Container(
                color: Colors.white,
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(200),
                                bottomRight: Radius.circular(200)),
                            color: Colors.orange,
                          ),
                          height: 350,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(500),
                                bottomRight: Radius.circular(500)),
                            child: Image.asset(
                              'images/nice for homescreen.png',
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                              margin: EdgeInsets.only(top: 145),
                              width: 310,
                              height: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(100),
                                    bottomRight: Radius.circular(100)),
                                color: Colors.white,
                              )),
                        ),
                        Center(
                          child: Container(
                              margin: EdgeInsets.only(top: 150),
                              width: 300,
                              height: 150,
                              child: MaterialButton(
                                  onPressed: () async {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AdviceScreen(),
                                      ),
                                    );
                                    GetDatAdvice();
                                    GetDatScreen();
                                    GetDataAnimal1();
                                    GetDataAnimal2();
                                    GetDataLetter1();
                                    GetDataLetter2();
                                    GetDataLetter3();
                                    GetDataLetter4();
                                    GetDataLetter5();
                                    GetDataLetter6();
                                    GetDataLetter7();
                                    GetDataLetter8();
                                    GetDataLetter9();
                                    GetDataLetter10();
                                    GetDataLetter11();
                                    GetDataLetter12();
                                    GetDataLetter13();
                                    GetDataLetter14();
                                    GetDataLetter15();
                                    GetDataLetter16();
                                    GetDataLetter17();
                                    GetDataLetter18();
                                    GetDataLetter19();
                                    GetDataLetter20();
                                    GetDataLetter21();
                                    GetDataLetter22();
                                    GetDataLetter23();
                                    GetDataLetter24();
                                    GetDataLetter25();
                                    GetDataLetter26();
                                    GetDataLetter27();
                                    GetDataLetter28();
                                    GetDataLetter29();
                                    GetDataLetter30();
                                    GetDataLetter31();
                                    GetDataLetter32();
                                    GetDataLetter33();
                                    GetDataLetter34();
                                    GetDataLetter35();
                                    GetDataLetter36();
                                    GetDataLetter37();
                                    GetDataLetter38();
                                    GetDataLetter39();
                                    GetDataLetter40();
                                    GetDataLetter41();
                                    GetDataLetter42();
                                    GetDataLetter43();
                                    GetDataLetter44();
                                    GetDataLetter45();
                                    GetDataLetter46();
                                    GetDataLetter47();
                                    GetDataLetter48();
                                    GetDataLetter49();
                                    GetDataLetter50();
                                    GetDataLetter51();
                                    GetDataLetter52();
                                    GetDataLetter53();
                                    GetDataLetter54();
                                    GetDataLetter55();
                                    GetDataLetter56();
                                    GetDataLetter57();
                                    GetDataLetter58();
                                    GetDataLetter59();
                                    GetDataLetter60();
                                    GetDataLetter61();
                                    GetDataLetter62();
                                    GetDataLetter63();
                                    GetDataLetter64();
                                    GetDataLetter65();
                                    GetDataLetter66();
                                    GetDataLetter67();
                                    GetDataLetter68();
                                    GetDataLetter69();
                                    GetDataLetter70();
                                    GetDataLetter71();
                                    GetDataLetter72();
                                    GetDataLetter73();
                                    GetDataLetter74();
                                    GetDataLetter75();
                                    GetDataLetter76();
                                    GetDataLetter77();
                                    GetDataLetter78();
                                    GetDataLetter79();
                                    GetDataLetter80();
                                    GetDataLetter81();
                                    GetDataLetter82();
                                    GetDataLetter83();
                                    GetDataLetter84();
                                    GetData1();
                                    GetData2();
                                    GetData3();
                                    GetData4();
                                    GetData5();
                                    GetData6();
                                    GetData7();
                                    GetData8();
                                    GetData9();
                                    GetData100();
                                    GetData101();
                                    GetData102();
                                    GetData103();
                                    GetData104();
                                    GetData105();
                                    GetData106();
                                    GetData107();
                                    GetData108();
                                    GetData109();
                                    GetData110();
                                    GetData111();
                                    GetData112();
                                    GetData113();
                                    GetData114();
                                    GetData115();
                                    GetData116();
                                    GetData117();
                                    GetData118();
                                    GetData119();
                                    GetData120();
                                    GetDataSen1();
                                    GetDataSen2();
                                    GetDataSen3();
                                    GetDataSen4();
                                    GetDataSen5();
                                    GetDataSen6();
                                    GetDataSen7();
                                    GetDataSen8();
                                    GetDataSen9();
                                    GetDataSen10();
                                    GetDataSen11();
                                    GetDataSen12();
                                    GetDataSen13();
                                    GetDataSen14();
                                    GetDataSen15();
                                  },
                                  child: Text(
                                    'إبدأ اللعب ',
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 50,
                                      shadows: [
                                        Shadow(
                                            color: Colors.white,
                                            blurRadius: 1,
                                            offset: Offset(0, 2)),
                                      ],
                                    ),
                                  )),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.orange, width: 3),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(100),
                                    bottomRight: Radius.circular(100)),
                                color: Colors.yellow[300],
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Column(
                        //   children: [
                        //     Container(
                        //         height: 100,
                        //         child: MaterialButton(
                        //           splashColor: Colors.red,
                        //           onPressed: () {
                        //             {}
                        //           },
                        //           child: Image.asset(
                        //             "images/doctor.png",
                        //             fit: BoxFit.cover,
                        //           ),
                        //         ),
                        //         decoration: BoxDecoration(
                        //           border: Border.all(
                        //               color: Colors.yellow, width: 3),
                        //           borderRadius: BorderRadius.circular(20),
                        //           color: Colors.orange,
                        //         )),
                        //     Text("سؤال طبى")
                        //   ],
                        // ),

                        Column(
                          children: [
                            Container(
                                height: 100,
                                width: 200,
                                child: MaterialButton(
                                  splashColor: Colors.red,
                                  onPressed: () {
                                    {
                                      Navigator.push(
                                        context,
                                        myPageTransition(
                                          // Page Transition -> Fade
                                          voices_putton_main(),
                                        ),
                                      );
                                    }
                                  },
                                  child: Image.asset(
                                    "images/words.jpg",
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.yellow, width: 3),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.orange,
                                )),
                            Text("أصوات")
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                                height: 100,
                                width: 200,
                                child: MaterialButton(
                                  splashColor: Colors.red,
                                  onPressed: () {
                                    {
                                      Navigator.push(
                                        context,
                                        myPageTransition(
                                          cartoon(),
                                        ),
                                      );
                                    }
                                  },
                                  child: Image.asset(
                                    "images/tv.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.yellow, width: 3),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.orange,
                                )),
                            Text("فيديوهات تعليمية")
                          ],
                        ),
                        // Column(
                        //   children: [
                        //     Container(
                        //         height: 100,
                        //         width: 150,
                        //         child: MaterialButton(
                        //           splashColor: Colors.red,
                        //           onPressed: () {
                        //             {
                        //               Navigator.push(
                        //                 context,
                        //                 myPageTransition(
                        //                   TimerScreen(),
                        //                 ),
                        //               );
                        //             }
                        //           },
                        //           child: Image.asset(
                        //             "images/book.png",
                        //             fit: BoxFit.cover,
                        //           ),
                        //         ),
                        //         decoration: BoxDecoration(
                        //           border: Border.all(
                        //               color: Colors.yellow, width: 3),
                        //           borderRadius: BorderRadius.circular(20),
                        //           color: Colors.orange,
                        //         )),
                        //     Text("معلومات مهمة")
                        //   ],
                        // )
                      ],
                    )
                  ],
                )),
              )),
        )));
  }

  void SignOut() {
    FirebaseAuth.instance.signOut();
  }

  GetDatAdvice() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Advice = prefs.getInt("id300");
    print(Advice);
    if (Advice == 300) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AdviceScreen(),
        ),
      );
    } else {
      print("No data for this page");
    }
  }

  GetDatScreen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Screen32 = prefs.getInt("idScreen400");
    print(Screen32);
    if (Screen32 == 400) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RoadMapAnimalVoices(),
        ),
      );
    } else {
      print("No data for screen page");
    }
  }

  GetDataAnimal1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrrAnimal1 = prefs.getInt("idAniaml1");
    print(userrrAnimal1);
    if (userrrAnimal1 == 10) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => dog2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataAnimal2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrrAnimal2 = prefs.getInt("idAniaml2");
    print(userrrAnimal2);
    if (userrrAnimal2 == 11) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RoadMaplettersvoices(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter1 = prefs.getInt("idLetter1");
    print(Letter1);
    if (Letter1 == 1001) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => a2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter2 = prefs.getInt("idLetter2");
    print(Letter2);
    if (Letter2 == 1002) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => a3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter3() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter3 = prefs.getInt("idLetter3");
    print(Letter3);
    if (Letter3 == 1003) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => b1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter4() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter4 = prefs.getInt("idLetter4");
    print(Letter4);
    if (Letter4 == 1004) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => b2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter5() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter5 = prefs.getInt("idLetter5");
    print(Letter5);
    if (Letter5 == 1005) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => b3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter6() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter6 = prefs.getInt("idLetter6");
    print(Letter6);
    if (Letter6 == 1006) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => c1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter7() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter7 = prefs.getInt("idLetter7");
    print(Letter7);
    if (Letter7 == 1007) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => c2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter8() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter8 = prefs.getInt("idLetter8");
    print(Letter8);
    if (Letter8 == 1008) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => c3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter9() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter9 = prefs.getInt("idLetter9");
    print(Letter9);
    if (Letter9 == 1009) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => d1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter10() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter10 = prefs.getInt("idLetter10");
    print(Letter10);
    if (Letter10 == 1010) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => d2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter11() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter11 = prefs.getInt("idLetter11");
    print(Letter11);
    if (Letter11 == 1011) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => d3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter12() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter12 = prefs.getInt("idLetter12");
    print(Letter12);
    if (Letter12 == 1012) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => e1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter13() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter13 = prefs.getInt("idLetter13");
    print(Letter13);
    if (Letter13 == 1013) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => e2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter14() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter14 = prefs.getInt("idLetter14");
    print(Letter14);
    if (Letter14 == 1014) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => e3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter15() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter15 = prefs.getInt("idLetter15");
    print(Letter15);
    if (Letter15 == 1015) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => f1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter16() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter16 = prefs.getInt("idLetter16");
    print(Letter16);
    if (Letter16 == 1016) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => f2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter17() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter17 = prefs.getInt("idLetter17");
    print(Letter17);
    if (Letter17 == 1017) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => f3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter18() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter18 = prefs.getInt("idLetter18");
    print(Letter18);
    if (Letter18 == 1018) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => g1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter19() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter19 = prefs.getInt("idLetter19");
    print(Letter19);
    if (Letter19 == 1019) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => g2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter20() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter20 = prefs.getInt("idLetter20");
    print(Letter20);
    if (Letter20 == 1020) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => g3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter21() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter21 = prefs.getInt("idLetter21");
    print(Letter21);
    if (Letter21 == 1021) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => h1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter22() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter22 = prefs.getInt("idLetter22");
    print(Letter22);
    if (Letter22 == 1022) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => h2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter23() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter23 = prefs.getInt("idLetter23");
    print(Letter23);
    if (Letter23 == 1023) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => h3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter24() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter24 = prefs.getInt("idLetter24");
    print(Letter24);
    if (Letter24 == 1024) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => i1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter25() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter25 = prefs.getInt("idLetter25");
    print(Letter25);
    if (Letter25 == 1025) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => i2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter26() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter26 = prefs.getInt("idLetter26");
    print(Letter26);
    if (Letter26 == 1026) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => i3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter27() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter27 = prefs.getInt("idLetter27");
    print(Letter27);
    if (Letter27 == 1027) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => j1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter28() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter28 = prefs.getInt("idLetter28");
    print(Letter28);
    if (Letter28 == 1028) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => j2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter29() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter29 = prefs.getInt("idLetter29");
    print(Letter29);
    if (Letter29 == 1029) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => j3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter30() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter30 = prefs.getInt("idLetter30");
    print(Letter30);
    if (Letter30 == 1030) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => k1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter31() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter31 = prefs.getInt("idLetter31");
    print(Letter31);
    if (Letter31 == 1031) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => k2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter32() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter32 = prefs.getInt("idLetter32");
    print(Letter32);
    if (Letter32 == 1032) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => k3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter33() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter33 = prefs.getInt("idLetter33");
    print(Letter33);
    if (Letter33 == 1033) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => l1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter34() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter34 = prefs.getInt("idLetter34");
    print(Letter34);
    if (Letter34 == 1034) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => l2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter35() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter35 = prefs.getInt("idLetter35");
    print(Letter35);
    if (Letter35 == 1035) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => l3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter36() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter36 = prefs.getInt("idLetter36");
    print(Letter36);
    if (Letter36 == 1036) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => m1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter37() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter37 = prefs.getInt("idLetter37");
    print(Letter37);
    if (Letter37 == 1037) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => m2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter38() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter38 = prefs.getInt("idLetter38");
    print(Letter38);
    if (Letter38 == 1038) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => m3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter39() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter39 = prefs.getInt("idLetter39");
    print(Letter39);
    if (Letter39 == 1039) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => n1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter40() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter40 = prefs.getInt("idLetter40");
    print(Letter40);
    if (Letter40 == 1040) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => n2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter41() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter41 = prefs.getInt("idLetter41");
    print(Letter41);
    if (Letter41 == 1041) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => n3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter42() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter42 = prefs.getInt("idLetter42");
    print(Letter42);
    if (Letter42 == 1042) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => o1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter43() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter43 = prefs.getInt("idLetter43");
    print(Letter43);
    if (Letter43 == 1043) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => o2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter44() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter44 = prefs.getInt("idLetter44");
    print(Letter44);
    if (Letter44 == 1044) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => o3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter45() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter45 = prefs.getInt("idLetter45");
    print(Letter45);
    if (Letter45 == 1045) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => p1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter46() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter46 = prefs.getInt("idLetter46");
    print(Letter46);
    if (Letter46 == 1046) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => p2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter47() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter47 = prefs.getInt("idLetter47");
    print(Letter47);
    if (Letter47 == 1047) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => p3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter48() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter48 = prefs.getInt("idLetter48");
    print(Letter48);
    if (Letter48 == 1048) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => q1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter49() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter49 = prefs.getInt("idLetter49");
    print(Letter49);
    if (Letter49 == 1049) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => q2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter50() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter50 = prefs.getInt("idLetter50");
    print(Letter50);
    if (Letter50 == 1050) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => q3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter51() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter51 = prefs.getInt("idLetter51");
    print(Letter51);
    if (Letter51 == 1051) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => r1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter52() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter52 = prefs.getInt("idLetter52");
    print(Letter52);
    if (Letter52 == 1052) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => r2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter53() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter53 = prefs.getInt("idLetter53");
    print(Letter53);
    if (Letter53 == 1053) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => r3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter54() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter54 = prefs.getInt("idLetter54");
    print(Letter54);
    if (Letter54 == 1054) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => s1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter55() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter55 = prefs.getInt("idLetter55");
    print(Letter55);
    if (Letter55 == 1055) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => s2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter56() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter56 = prefs.getInt("idLetter56");
    print(Letter56);
    if (Letter56 == 1056) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => s3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter57() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter57 = prefs.getInt("idLetter57");
    print(Letter57);
    if (Letter57 == 1057) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => t1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter58() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter58 = prefs.getInt("idLetter58");
    print(Letter58);
    if (Letter58 == 1058) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => t2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter59() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter59 = prefs.getInt("idLetter59");
    print(Letter59);
    if (Letter59 == 1059) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => t3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter60() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter60 = prefs.getInt("idLetter60");
    print(Letter60);
    if (Letter60 == 1060) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => u1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter61() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter61 = prefs.getInt("idLetter61");
    print(Letter61);
    if (Letter61 == 1061) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => u2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter62() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter62 = prefs.getInt("idLetter62");
    print(Letter62);
    if (Letter62 == 1062) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => u3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter63() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter63 = prefs.getInt("idLetter63");
    print(Letter63);
    if (Letter63 == 1063) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => v1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter64() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter64 = prefs.getInt("idLetter64");
    print(Letter64);
    if (Letter64 == 1064) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => v2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter65() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter65 = prefs.getInt("idLetter65");
    print(Letter65);
    if (Letter65 == 1065) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => v3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter66() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter66 = prefs.getInt("idLetter66");
    print(Letter66);
    if (Letter66 == 1066) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => w1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter67() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter67 = prefs.getInt("idLetter67");
    print(Letter67);
    if (Letter67 == 1067) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => w2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter68() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter68 = prefs.getInt("idLetter68");
    print(Letter68);
    if (Letter68 == 1068) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => w3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter69() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter69 = prefs.getInt("idLetter69");
    print(Letter69);
    if (Letter69 == 1069) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => x1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter70() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter70 = prefs.getInt("idLetter70");
    print(Letter70);
    if (Letter70 == 1070) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => x2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter71() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter71 = prefs.getInt("idLetter71");
    print(Letter71);
    if (Letter71 == 1071) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => x3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter72() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter72 = prefs.getInt("idLetter72");
    print(Letter72);
    if (Letter72 == 1072) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => y1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter73() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter73 = prefs.getInt("idLetter73");
    print(Letter73);
    if (Letter73 == 1073) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => y2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter74() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter74 = prefs.getInt("idLetter74");
    print(Letter74);
    if (Letter74 == 1074) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => y3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter75() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter75 = prefs.getInt("idLetter75");
    print(Letter75);
    if (Letter75 == 1075) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => z1(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter76() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter76 = prefs.getInt("idLetter76");
    print(Letter76);
    if (Letter76 == 1076) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => z2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter77() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter77 = prefs.getInt("idLetter77");
    print(Letter77);
    if (Letter77 == 1077) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => z3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter78() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter78 = prefs.getInt("idLetter78");
    print(Letter78);
    if (Letter78 == 1078) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => z31(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter79() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter79 = prefs.getInt("idLetter79");
    print(Letter79);
    if (Letter79 == 1079) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => z32(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter80() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter80 = prefs.getInt("idLetter80");
    print(Letter80);
    if (Letter80 == 1080) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => z33(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter81() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter81 = prefs.getInt("idLetter81");
    print(Letter81);
    if (Letter81 == 1081) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => z34(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter82() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter82 = prefs.getInt("idLetter82");
    print(Letter82);
    if (Letter82 == 1082) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => z35(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter83() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter83 = prefs.getInt("idLetter83");
    print(Letter83);
    if (Letter83 == 1083) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => z36(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataLetter84() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Letter84 = prefs.getInt("idLetter84");
    print(Letter84);
    if (Letter84 == 1084) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RoadMapWordsVoices(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr1 = prefs.getInt("id1");
    print(userrr1);
    if (userrr1 == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => number2(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr2 = prefs.getInt("id2");
    print(userrr2);
    if (userrr2 == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => number3(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData3() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr3 = prefs.getInt("id3");
    print(userrr3);
    if (userrr3 == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => number4(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData4() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr4 = prefs.getInt("id4");
    print(userrr4);
    if (userrr4 == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => number5(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData5() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr5 = prefs.getInt("id5");
    print(userrr5);
    if (userrr5 == 5) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => number6(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData6() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr6 = prefs.getInt("id6");
    print(userrr6);
    if (userrr6 == 6) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => number7(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData7() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr7 = prefs.getInt("id7");
    print(userrr7);
    if (userrr7 == 7) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => number8(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData8() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr8 = prefs.getInt("id8");
    print(userrr8);
    if (userrr8 == 8) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => number9(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData9() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr9 = prefs.getInt("id9");
    print(userrr9);
    if (userrr9 == 9) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => direction(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData100() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr100 = prefs.getInt("id100");
    print(userrr100);
    if (userrr100 == 100) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => eye(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData101() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr101 = prefs.getInt("id101");
    print(userrr101);
    if (userrr101 == 101) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => next(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData102() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr102 = prefs.getInt("id102");
    print(userrr102);
    if (userrr102 == 102) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => agree(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData103() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr103 = prefs.getInt("id103");
    print(userrr103);
    if (userrr103 == 103) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => no(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData104() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr104 = prefs.getInt("id104");
    print(userrr104);
    if (userrr104 == 104) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => yes(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData105() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr105 = prefs.getInt("id105");
    print(userrr105);
    if (userrr105 == 105) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => close(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData106() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr106 = prefs.getInt("id106");
    print(userrr106);
    if (userrr106 == 106) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => move(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData107() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr107 = prefs.getInt("id107");
    print(userrr107);
    if (userrr107 == 107) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => open(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData108() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr108 = prefs.getInt("id108");
    print(userrr108);
    if (userrr108 == 108) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => receive(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData109() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr109 = prefs.getInt("id109");
    print(userrr109);
    if (userrr109 == 109) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => remove(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData110() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr110 = prefs.getInt("id110");
    print(userrr110);
    if (userrr110 == 110) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => send(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData111() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr111 = prefs.getInt("id111");
    print(userrr111);
    if (userrr111 == 111) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => start(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData112() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr112 = prefs.getInt("id112");
    print(userrr112);
    if (userrr112 == 112) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => wait(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData113() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr113 = prefs.getInt("id113");
    print(userrr113);
    if (userrr113 == 113) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => agreement(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData114() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr114 = prefs.getInt("id114");
    print(userrr114);
    if (userrr114 == 114) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => bad(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData115() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr115 = prefs.getInt("id115");
    print(userrr115);
    if (userrr115 == 115) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => fantastic(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData116() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr116 = prefs.getInt("id116");
    print(userrr116);
    if (userrr116 == 116) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => film(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData117() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr117 = prefs.getInt("id117");
    print(userrr117);
    if (userrr117 == 117) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => thiss(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData118() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr118 = prefs.getInt("id118");
    print(userrr118);
    if (userrr118 == 118) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => dis_like(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData119() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr119 = prefs.getInt("id119");
    print(userrr119);
    if (userrr119 == 119) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => like(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetData120() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userrr120 = prefs.getInt("id120");
    print(userrr120);
    if (userrr120 == 120) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RoadMapSentencesVoices(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataSen1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Sentences1 = prefs.getInt("idSen1");
    print(Sentences1);
    if (Sentences1 == 200) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => good_by(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataSen2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Sentences2 = prefs.getInt("idSen2");
    print(Sentences2);
    if (Sentences2 == 201) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => good_morning(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataSen3() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Sentences3 = prefs.getInt("idSen3");
    print(Sentences3);
    if (Sentences3 == 202) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => good_evening(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataSen4() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Sentences4 = prefs.getInt("idSen4");
    print(Sentences4);
    if (Sentences4 == 203) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => welcome(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataSen5() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Sentences5 = prefs.getInt("idSen5");
    print(Sentences5);
    if (Sentences5 == 204) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => how_ara_you(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataSen6() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Sentences6 = prefs.getInt("idSen6");
    print(Sentences6);
    if (Sentences6 == 205) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => love(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataSen7() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Sentences7 = prefs.getInt("idSen7");
    print(Sentences7);
    if (Sentences7 == 206) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => i_want_to_go_out(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataSen8() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Sentences8 = prefs.getInt("idSen8");
    print(Sentences8);
    if (Sentences8 == 207) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => i_want_to_play(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataSen9() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Sentences9 = prefs.getInt("idSen9");
    print(Sentences9);
    if (Sentences9 == 208) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => im_sleepy(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataSen10() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Sentences10 = prefs.getInt("idSen10");
    print(Sentences10);
    if (Sentences10 == 209) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => im_good(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataSen11() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Sentences11 = prefs.getInt("idSen11");
    print(Sentences11);
    if (Sentences11 == 210) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => im_happy(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataSen12() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Sentences12 = prefs.getInt("idSen12");
    print(Sentences12);
    if (Sentences12 == 211) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => im_sad(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataSen13() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Sentences13 = prefs.getInt("idSen13");
    print(Sentences13);
    if (Sentences13 == 212) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => im_sorry(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataSen14() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Sentences14 = prefs.getInt("idSen14");
    print(Sentences14);
    if (Sentences14 == 213) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => im_thirsty(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }

  GetDataSen15() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Sentences15 = prefs.getInt("idSen15");
    print(Sentences15);
    if (Sentences15 == 214) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => finalCelebration(),
        ),
      );
    } else {
      print("No saved data for you");
    }
  }
}
