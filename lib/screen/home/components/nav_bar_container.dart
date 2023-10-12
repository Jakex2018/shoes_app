import 'package:flutter/material.dart';
import 'package:shoes_app/components/category_list.dart';
import 'package:shoes_app/components/welcome_title.dart';
import 'package:shoes_app/constant.dart';

class NavBarContainer extends StatelessWidget {
  const NavBarContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.4,
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(90)
        )
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: WelcomeTitle(title: 'Athletic Shoes\nCollection', fontWeight: FontWeight.bold, color: Colors.white, fontSize: 40,),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 60),
              child: CategoryList(),
            )
          ],
        ),
      ),
    );
  }
}