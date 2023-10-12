import 'package:flutter/material.dart';
import 'package:shoes_app/constant.dart';

class ShoeCardContainer extends StatelessWidget {
  const ShoeCardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
          color: klightColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
