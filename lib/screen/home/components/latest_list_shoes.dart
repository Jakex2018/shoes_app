import 'package:flutter/material.dart';
import 'package:shoes_app/constant.dart';

class LastesListShoes extends StatelessWidget {
  const LastesListShoes({
    super.key, required this.widget,
  });
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height:60,
      decoration: BoxDecoration(
        color: klightColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: widget,
      ),
    );
  }
}