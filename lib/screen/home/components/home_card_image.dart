import 'package:flutter/material.dart';
class HomeCardImage extends StatelessWidget {
  const HomeCardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 60,
      left: 20,
      right: 0,
      child: Center(
          child: Image.asset(
        'assets/images/shoe_red01.png',
        height: 450,
        fit: BoxFit.contain,
      )),
    );
  }
}
