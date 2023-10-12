import 'package:flutter/material.dart';


class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({
    super.key, required this.title, required this.fontWeight, required this.color, required this.fontSize,
  });
  final String title;
  final FontWeight fontWeight;
  final Color color;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(color: color,fontWeight: fontWeight ,fontSize: fontSize),);
  }
}