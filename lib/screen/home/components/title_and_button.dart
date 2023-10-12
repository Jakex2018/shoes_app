import 'package:flutter/material.dart';
import 'package:shoes_app/components/welcome_title.dart';
import 'package:shoes_app/constant.dart';

class TitleAndButton extends StatelessWidget {
  const TitleAndButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: aDefaultPadding-10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          WelcomeTitle(title: 'Latest Shoes', fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black, ),
          WelcomeTitle(title: 'See all', fontSize: 15, fontWeight: FontWeight.bold, color: kTextLightColor,),
        ],
      ),
    );
  }
}