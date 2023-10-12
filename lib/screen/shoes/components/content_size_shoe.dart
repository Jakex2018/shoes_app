import 'package:flutter/material.dart';
import 'package:shoes_app/screen/home/components/latest_list_shoes.dart';
class ContentSizeShoe extends StatelessWidget {
  const ContentSizeShoe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LastesListShoes(widget: Center(
            child: Text('31',style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 20
            ),),
          )),
          LastesListShoes(widget: Center(
            child: Text('31',style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 20
            ),),
          )),
          LastesListShoes(widget: Center(
            child: Text('31',style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 20
            ),),
          )),
          LastesListShoes(widget: Center(
            child: Text('31',style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 20
            ),),
          )),
        ],
      ),
    );
  }
}