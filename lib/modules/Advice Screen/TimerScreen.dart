import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:speakup/modules/Home%20Screen/HomeScreen.dart';

import '../../internet/build_offline_builder.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({Key? key}) : super(key: key);
   @override
  State<TimerScreen> createState() => _TimerScreenstate();
}
class _TimerScreenstate extends State<TimerScreen>
{
  @override
  // Timer
  Widget build(BuildContext context) {
   return  Scaffold(
   backgroundColor: Colors.amber,
   body: Center(
    child: SlideCountdown(
      duration: Duration(hours: 2),
      icon: Padding(padding:
       EdgeInsets.only(right: 0),
       child: Icon(
        Icons.access_time_sharp,
        color: Colors.white,
        size: 20,
       ),
       ),
       showZeroValue: true,
       separator: "-",
       //slideAnimationDuration: Duration(microseconds: 500),
       slideDirection: SlideDirection.down,
       textDirection: TextDirection.ltr,

    ),
   ),
   );
  }
  

}

