import 'package:flutter/material.dart';
import 'package:shoes_app/components/bottom_nav_bar.dart';
import 'package:shoes_app/constant.dart';
import 'package:shoes_app/screen/home/components/body.dart';
class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Material(
      color: kbackgroundColor,
      child: Stack(
        children: [
          SingleChildScrollView(
          child: BodyHome(),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: BottomNavBar(),
        )
        ]
      ),
    );
  }
}



