import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderData extends StatelessWidget {
  const SliderData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: CarouselSlider(items: [
        Container(


          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.brown, borderRadius: BorderRadius.circular(15)),


        )
      ], options: CarouselOptions()),
    );
  }
}
