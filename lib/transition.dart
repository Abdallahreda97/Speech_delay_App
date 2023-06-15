import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

PageTransition<dynamic> myPageTransition(Widget page) {
  return PageTransition(
    duration: Duration(milliseconds: 500),
    type: PageTransitionType.fade,
    child: page,
  );
}