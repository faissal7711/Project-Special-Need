import 'package:flutter/material.dart';

class Res {
  static const double headLine1 = 28.0;
  static const double headLine2 = 26.0;
  static const double headLine3 = 24.0;
  static const double headLine4 = 22.0;
  static const double headLine5 = 20.0;
  static const double large = 16.0;
  static const double normal = 14.0;
  static const double lowNormal = 12.0;
  static const double small = 10.0;
  static const double verySmall = 8.0;
  static const double veryVerySmall = 6.0;

  static const double drawerFontSize = 14.0;
  static const double drawerFontPadding = 10.0;

  static const double smallIconSize = 16.0;
  static const double iconSize = 55.0;
  static const double bigIconSize = 120.0;

  static const double drawerRightPadding = 25.0;
  static const double drawerButtonMargin = 22.0;


  static double of(BuildContext context, [double fontSize]) {
    final double MQH = MediaQuery.of(context).size.height;
    final double MQW = MediaQuery.of(context).size.width;
    final min = MQH < MQW ? MQH : MQW;
    return min * ((fontSize ?? normal) * 0.32 / 100);
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}