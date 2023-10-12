import 'package:flutter/material.dart';
class CircleColor extends StatelessWidget {
  const CircleColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}