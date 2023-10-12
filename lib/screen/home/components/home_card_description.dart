import 'package:flutter/material.dart';
import 'package:shoes_app/components/welcome_title.dart';
import 'package:shoes_app/constant.dart';
import 'package:shoes_app/screen/home/components/circle_color.dart';

class HomeCardDescription extends StatelessWidget {
  const HomeCardDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
       top: 400,
       left: 20,
       right: 0,
       child: Padding(
         padding: EdgeInsets.symmetric(horizontal: 40),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             WelcomeTitle(
                 title: 'Jordan RDX\nShoes',
                 fontWeight: FontWeight.bold,
                 color: Colors.black,
                 fontSize: 30),
             WelcomeTitle(
                 title: 'Men Running',
                 fontWeight: FontWeight.bold,
                 color: klightColor,
                 fontSize: 20),
                 SizedBox(height: 20,),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   WelcomeTitle(
                       title: '\$180.00',
                       fontWeight: FontWeight.bold,
                       color: Colors.black,
                       fontSize: 20),
                   Row(
                     children: [
                           WelcomeTitle(
                           title: 'Colors',
                           fontWeight: FontWeight.bold,
                           color: klightColor,
                           fontSize: 15),
                           SizedBox(width: 10),
                           CircleColor(),
                           SizedBox(width: 5,),
                           CircleColor()
                     ],
                   )
                 ],
               ),
             )
           ],
         ),
       ));
  }
}