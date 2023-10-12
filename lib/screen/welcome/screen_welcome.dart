import 'package:flutter/material.dart';
import 'package:shoes_app/screen/welcome/components/body.dart';
final List <String> images=[
  'https://images.pexels.com/photos/1070360/pexels-photo-1070360.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/7445819/pexels-photo-7445819.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/6664301/pexels-photo-6664301.png?auto=compress&cs=tinysrgb&w=600',
];
class ScreenWelcome extends StatelessWidget {
  const ScreenWelcome({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyWelcome(),
    );
  }
}

