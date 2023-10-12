import 'package:flutter/material.dart';

class RichTextStyle extends StatelessWidget {
  const RichTextStyle({
    super.key, required this.title, required this.color, required this.fontWeight, required this.size, required this.decorationThickness, required this.decoration, required this.decorationColor,
  });
  final String title;
  final Color color, decorationColor;
  final FontWeight fontWeight;
  final double size,decorationThickness;
  final TextDecoration decoration;
  @override
  Widget build(BuildContext context) {
    return RichText(
     text:TextSpan(
       
       text: title,style: TextStyle(color: color,fontWeight: fontWeight, 
       fontSize: size,
       decoration: decoration,decorationThickness: decorationThickness, decorationColor: decorationColor)
     ),
    );
  }
}