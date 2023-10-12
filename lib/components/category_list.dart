import 'package:flutter/material.dart';
import 'package:shoes_app/constant.dart';
class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectIndex = 0;
  List categories =['Men Shoes' , 'Women Shoes' , 'All'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.symmetric(vertical: aDefaultPadding),
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {
            setState(() {
              selectIndex = index; 
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: aDefaultPadding*1.5,
              right: index == categories.length -1 ? aDefaultPadding : 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8)
            ),
            child: Text(categories[index], style: TextStyle(
              color: index == selectIndex ? Colors.white : Colors.white60,fontSize: 17,fontWeight: FontWeight.bold
            )),
          ),
        ),
      ),
    );
  }
}