import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoConnection extends StatefulWidget {
  const NoConnection({
    Key? key,
    required this.child,
    required this.connected,
  }) : super(key: key);
  final Widget child;
  final bool connected;

  @override
  State<NoConnection> createState() => _NoConnectionState();
}

class _NoConnectionState extends State<NoConnection>
    with SingleTickerProviderStateMixin {
  @override
  late AnimationController _animationController;
  late Animation<double> _animation;
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.dismissed) {
          _animationController.forward();
        } else if (status == AnimationStatus.completed) {
          _animationController.repeat();
        }
      });

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
            child: !widget.connected
                ? SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 100,
                          ),
                          Center(
                            child: CustomPaint(
                              painter: MyCustomPainter(_animation.value),
                              child: Container(),
                            ),
                          ),
                          SizedBox(
                            height: 300,
                          ),
                          Text(
                            "لا يوجد اتصال بالانترنت",
                            style:
                                TextStyle(fontSize: 30, color: Colors.orange),
                          )
                          // Image.asset('images/No Internet.png')
                        ]),
                  )
                : widget.child),
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  final double animationValue;

  MyCustomPainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    for (int value = 3; value >= 0; value--) {
      circle(canvas, Rect.fromLTRB(0, 0, size.width, size.height),
          value + animationValue);
    }
  }

  void circle(Canvas canvas, Rect rect, double value) {
    Paint paint = Paint()
      ..color = Color.fromARGB(255, 230, 177, 5)
          .withOpacity((1 - (value / 4)).clamp(.0, 1));

    canvas.drawCircle(rect.center,
        sqrt((rect.width * .5 * rect.width * .5) * value / 4), paint);
  }

  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) {
    return true;
  }
}
