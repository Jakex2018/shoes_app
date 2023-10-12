import 'package:flutter/material.dart';
import 'package:shoes_app/constant.dart';

class HomeCardIcon extends StatelessWidget {
  const HomeCardIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 210,left: 280,right: 50,
      child: Icon(Icons.favorite, color: klightColor,size: 30,),
    );
  }
}