import 'package:flutter/material.dart';
import 'package:shoes_app/constant.dart';
import 'package:shoes_app/screen/welcome/components/rich_text_style.dart';

class RichTextOne extends StatelessWidget {
  const RichTextOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       RichTextStyle(title: 'Find your', color:Colors.white, fontWeight: FontWeight.bold, size: 40, decorationThickness: 0, decoration: TextDecoration.none, decorationColor: Colors.transparent,),
       SizedBox(width: 10,),
       RichTextStyle(title: 'best', color:Colors.white, fontWeight: FontWeight.bold, size: 40, decorationThickness: 4.0, decoration: TextDecoration.underline,decorationColor: kPrimaryColor,)
     ],
     );
  }
}