import 'package:flutter/material.dart';
import 'package:shoes_app/screen/home/components/home_card.dart';

import 'package:shoes_app/screen/home/components/lates_and_shoes_content.dart';
import 'package:shoes_app/screen/home/components/title_and_button.dart';

class ShoesAndLatest extends StatelessWidget {
  const ShoesAndLatest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              HomeCard(),
              HomeCard(),
              HomeCard(),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: TitleAndButton(),
        ),
        LatestListShoesContent()
      ],
    );
  }
}

