import 'package:flutter/material.dart';
import 'package:shoes_app/components/button01.dart';
import 'package:shoes_app/constant.dart';

class IconAndButton extends StatelessWidget {
  const IconAndButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const CircleAvatar(
          backgroundColor: klightColor,
          child: Icon(Icons.badge , color: kPrimaryColor,),
        ),
        ButtonOne(title: 'Buy Now', color: Colors.white, weight: FontWeight.bold, fontSize: 20, paddingX:70, paddingY: 15, colorTwo:kPrimaryColor)
      ],
    );
  }
}

