import 'package:flutter/material.dart';
import 'package:shoes_app/components/welcome_title.dart';
import 'package:shoes_app/constant.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomeTitle(title: 'Jordan Air Trx2018', fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
              SizedBox(height: 5,),
              WelcomeTitle(title: 'Men Running', fontWeight: FontWeight.bold, color: kTextLightColor, fontSize: 20)
            ],
          ),
          WelcomeTitle(title: '\$180.00', fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25)
        ],
      ),
    );
  }
}