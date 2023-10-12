import 'package:flutter/material.dart';
class HomeCardContainer extends StatelessWidget {
  const HomeCardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 200),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.48,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}