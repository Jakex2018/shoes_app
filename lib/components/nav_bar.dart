import 'package:flutter/material.dart';
import 'package:shoes_app/components/welcome_title.dart';
import 'package:shoes_app/constant.dart';
class NavBarBuild extends StatelessWidget {
  const NavBarBuild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: InkWell(
        onTap: (){Navigator.pop(context);},
        child: const CircleAvatar(
          backgroundColor: klightColor,
          radius: 20,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.arrow_back_ios,color: Colors.black,),
          ),
        ),
      ),
      actions: const [
        CircleAvatar(
          backgroundColor: klightColor,
          radius: 30,
          child: Icon(Icons.favorite,color: Colors.black,),
        )
      ],
      centerTitle: true,
      title: const WelcomeTitle(
          title: 'Details',
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 20),
    );
  }
}
