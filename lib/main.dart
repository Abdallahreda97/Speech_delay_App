import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:speakup/modules/Advice%20Screen/AdviceScreen.dart';
import 'package:speakup/modules/Animals%20Voices/Road%20map%20Animals%20Voices.dart';
import 'package:speakup/modules/Home%20Screen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:speakup/modules/Letters%20Voice/Road%20map%20letters%20voices.dart';
import 'package:speakup/modules/Sentences%20Voices/Road%20map%20sentences%20voices.dart';
import 'package:speakup/modules/Words%20Voices/Road%20map%20words%20voices.dart';
import 'modules/Signup Screen/Signup Screen.dart';

Future messageWhenMobileOff(
    RemoteMessage message) async // Get the information of the notifaction.
{
   print(
      "${message.notification!.body}"); // Show the message when the app is close.
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(messageWhenMobileOff);

  runApp(myapp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light),
  );
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(messageWhenMobileOff);

  runApp(myapp());
}

//StatelessWidget

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

//Keep the user loginin
class _myappState extends State<myapp> {
  var islogin = false;
  var Auth1 = FirebaseAuth.instance;
  var messaging1 = FirebaseMessaging.instance;
  CheckIfLogin() async {
    Auth1.authStateChanges().listen((User? user) {
      if (user != null && mounted) {
        setState(() {
          islogin = true;
        });
      }
    });
  }

  @override
  void initState() {
    CheckIfLogin();
    super.initState();
    messaging1.getToken().then((token) {
      // Show message in background.
      print("----token----");
      print(token);
      print("----token----");
    });

    // FirebaseMessaging.onMessage.listen((event) {
    //   AwesomeDialog(context: context,title: "title",body: Text("${event.notification?.body}"))..show();
    //  }); // Show message when the app is open.
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: islogin
          ? const HomeScreen2()
          : const HomeScreen2() //Keep the user loginin
    );
  }
}
