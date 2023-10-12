import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/constant.dart';
import 'package:shoes_app/lorem.dart';
import 'package:shoes_app/screen/home/components/lates_and_shoes_content.dart';
import 'package:shoes_app/screen/shoes/components/content_size_shoe.dart';
import 'package:shoes_app/screen/shoes/components/shoe_card_container.dart';
import 'package:shoes_app/screen/shoes/components/title_and_price.dart';
import 'package:shoes_app/screen/shoes/components/title_and_subtitle.dart';

final List<String> shoeImg = [
  'assets/images/shoe_blue03.png',
  'assets/images/shoe_red01.png'
];

class BodyShoe extends StatefulWidget {
  const BodyShoe({super.key});

  @override
  State<BodyShoe> createState() => _BodyShoeState();
}

class _BodyShoeState extends State<BodyShoe> {
  final CarouselController _carouselController = CarouselController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BuildShoeCardContent(context),
            const SizedBox(height: 10,),
            const LatestListShoesContent(),
            const TitleAndPrice(),
            const TitleAndSubTitle(),
            const ContentSizeShoe(),
            Text(''.loremIpsum,style: const TextStyle(color: kTextLightColor,fontWeight: FontWeight.bold),textAlign:TextAlign.justify),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Stack BuildShoeCardContent(BuildContext context) {
    return Stack(
            children: [
              const ShoeCardContainer(),
              BuilCarouselSlider(context),
              BuilDotImage()
            ],
          );
  }

  // ignore: non_constant_identifier_names
  Positioned BuilDotImage() {
    return Positioned(
                bottom: 30,
                left: 0,
                right: 0,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      shoeImg.length,
                      (index) => builDot(index: index),
                    )),
              );
  }

  // ignore: non_constant_identifier_names
  Positioned BuilCarouselSlider(BuildContext context) {
    return Positioned(
                bottom: 30,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    CarouselSlider(
                      items: shoeImg.map((e) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Image.asset(
                              e,
                              fit: BoxFit.cover,
                            );
                          },
                        );
                      }).toList(),
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.height * 0.3,
                        viewportFraction: 1.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                      carouselController: _carouselController,
                    ),
                  ],
                ),
              );
  }

  Widget builDot({required int index}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: _currentIndex == index ? 15 : 15,
      height: 15,
      decoration: BoxDecoration(
          color: _currentIndex == index ? kPrimaryColor : Colors.grey,
          borderRadius: BorderRadius.circular(20)),
    );
  }
}