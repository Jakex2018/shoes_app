import 'package:flutter/material.dart';
import 'package:shoes_app/screen/home/components/home_card_container.dart';
import 'package:shoes_app/screen/home/components/home_card_description.dart';
import 'package:shoes_app/screen/home/components/home_card_icon.dart';
import 'package:shoes_app/screen/home/components/home_card_image.dart';
import 'package:shoes_app/screen/shoes/screen_shoes.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenShoes(),));
      },
      child:const Stack(children: [
        HomeCardContainer(),
        HomeCardIcon(),
        HomeCardImage(),
        HomeCardDescription(),
      ]),
    );
  }
}