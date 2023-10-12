import 'package:flutter/material.dart';
import 'package:shoes_app/screen/home/components/nav_bar_container.dart';
import 'package:shoes_app/screen/home/components/shoes_and_latest.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        NavBarContainer(), 
        Positioned(
          child: ShoesAndLatest(),
        ),
        ],
    );
  }
}