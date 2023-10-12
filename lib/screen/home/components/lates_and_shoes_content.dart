import 'package:flutter/material.dart';
import 'package:shoes_app/screen/home/components/latest_list_shoes.dart';

class LatestListShoesContent extends StatelessWidget {
  const LatestListShoesContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LastesListShoes(widget: Image.asset('assets/images/shoe_blue03.png',height: 60, fit: BoxFit.cover,),),
        LastesListShoes(widget: Image.asset('assets/images/shoe_blue03.png',height: 60, fit: BoxFit.cover,),),
        LastesListShoes(widget: Image.asset('assets/images/shoe_blue03.png',height: 60, fit: BoxFit.cover,),),
        LastesListShoes(widget: Image.asset('assets/images/shoe_blue03.png',height: 60, fit: BoxFit.cover,),)
      ],
    );
  }
}

