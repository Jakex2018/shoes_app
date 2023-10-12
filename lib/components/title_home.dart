import 'package:flutter/material.dart';

class TitleHome extends StatelessWidget {
  const TitleHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20 ,vertical: 10),
      child: Text('Boost your workouts',style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 23
      ),),
    );
  }
}