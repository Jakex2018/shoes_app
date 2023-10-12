import 'package:flutter/material.dart';

class OverlayApp extends StatelessWidget {
  const OverlayApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     width: MediaQuery.of(context).size.width,
     height: MediaQuery.of(context).size.height,
     color: Colors.black.withOpacity(0.3), // Ajusta la opacidad según sea necesario
    );
  }
}

class WelcomeSubItems extends StatelessWidget {
  const WelcomeSubItems({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Text(title,style: const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15
      ),),
    );
  }
}