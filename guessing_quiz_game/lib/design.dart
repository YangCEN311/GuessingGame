import 'package:flutter/material.dart';

class Design {
  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static const Color buttonColor = Colors.grey;
}
