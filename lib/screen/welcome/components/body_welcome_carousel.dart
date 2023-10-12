import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/components/button01.dart';
import 'package:shoes_app/components/overlay_app.dart';
import 'package:shoes_app/constant.dart';
import 'package:shoes_app/screen/home/screen_home.dart';
import 'package:shoes_app/screen/welcome/components/rich_text_one.dart';
import 'package:shoes_app/screen/welcome/screen_welcome.dart';

class BodyWelcomeCarousel extends StatefulWidget {
  const BodyWelcomeCarousel({
    super.key,
  });

  @override
  State<BodyWelcomeCarousel> createState() => _BodyWelcomeCarouselState();
}

class _BodyWelcomeCarouselState extends State<BodyWelcomeCarousel> {
  int _currentIndex = 0;
  final CarouselController _carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: [
          CarouselSlider(
           items:images.map((e) {
           return Builder(builder:(BuildContext context) {
             return CachedNetworkImage(
               imageUrl: e,
               fit: BoxFit.cover,
               placeholder: (context, url) => const CircularProgressIndicator(),
               errorWidget: (context, url, error) => const Icon(Icons.error),
             );
           }, );
           }).toList(), 
           options: CarouselOptions(
           height: MediaQuery.of(context).size.height,
           viewportFraction: 1.0,
           onPageChanged: (index, reason) {
             setState(() {
               _currentIndex = index;
             });
           },
           ),
           carouselController: _carouselController,
           ),
        Positioned(
          top: 10,
          right: -25,
          child: Image.asset('assets/images/logo.png' ,height: 150),
        ),
        Positioned(
          bottom: 50,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                images.length,
                (index) => builDot(index: index),
              )
             ),
              const SizedBox(height: 30,),
              const RichTextOne(),
              const SizedBox(height: 50,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenHome(),));
                },
                child: ButtonOne(title: 'Get Started', color: Colors.white, weight: FontWeight.bold, fontSize:17, paddingX: 60, paddingY: 25, colorTwo: kPrimaryColor))
            ]
          ),
        ),
        const Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
          child: IgnorePointer(
            ignoring: true,
            child: OverlayApp()),
        ),
        ]
      ),
    );
  }
  Widget builDot({required int index}){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5),
    width: _currentIndex == index ? 15: 15,
    height: 15,
    decoration: BoxDecoration(
      color: _currentIndex == index ? kPrimaryColor : Colors.grey,
      borderRadius: BorderRadius.circular(20)
    ),
  );
}
}

