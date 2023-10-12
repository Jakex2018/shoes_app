import 'package:flutter/material.dart';
import 'package:shoes_app/components/welcome_title.dart';
import 'package:shoes_app/constant.dart';

class TitleAndSubTitle extends StatelessWidget {
  const TitleAndSubTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WelcomeTitle(title: 'Select size', fontWeight: FontWeight.bold, color: kTextLightColor, fontSize: 20),
          SizedBox(height: 5,),
          WelcomeTitle(title: 'Size chart', fontWeight: FontWeight.bold, color: kPrimaryColor, fontSize: 20)
        ],
      ),
    );
  }
}

