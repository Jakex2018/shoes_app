import 'package:flutter/material.dart';
import 'package:shoes_app/components/nav_bar.dart';
import 'package:shoes_app/screen/shoes/components/body.dart';
import 'package:shoes_app/screen/shoes/components/icon_and_button.dart';

class ScreenShoes extends StatelessWidget {
  const ScreenShoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarBuild(),
      body:const BodyShoe(),
      bottomNavigationBar: const IconAndButton(),
    );
  }

  // ignore: non_constant_identifier_names
  PreferredSize AppbarBuild() {
    return const PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: NavBarBuild(),
      ));
  }
}

