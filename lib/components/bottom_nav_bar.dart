import 'package:flutter/material.dart';
import 'package:shoes_app/constant.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)
        )
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavBarIcons(IconTitle: Icon(Icons.home_sharp,color: Colors.white,size: 30,)),
          BottomNavBarIcons(IconTitle: Icon(Icons.favorite_border_rounded,color: Colors.white,size: 30),),
          BottomNavBarIcons(IconTitle: Icon(Icons.notifications_active_rounded,color: Colors.white,size: 30),),
          BottomNavBarIcons(IconTitle: Icon(Icons.credit_card_off_outlined,color: Colors.white,size: 30),)
        ],
      )
    );
  }
}

class BottomNavBarIcons extends StatelessWidget {
  const BottomNavBarIcons({
    // ignore: non_constant_identifier_names
    super.key, required this.IconTitle,
  });
  // ignore: non_constant_identifier_names
  final Widget IconTitle;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){}, icon: IconTitle);
  }
}