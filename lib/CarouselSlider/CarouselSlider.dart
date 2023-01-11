import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CourselSliderContainer extends StatelessWidget {
  const CourselSliderContainer({
    required this.FirstCourselSliderList,
  });

  final List FirstCourselSliderList;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: (context, index, realIndex) => Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
          FirstCourselSliderList[index],
        ))),
      ),
      itemCount: FirstCourselSliderList.length,
      options: CarouselOptions(
        pageSnapping: true,
        aspectRatio: 16 / 7,
        viewportFraction: 1,
        enableInfiniteScroll: true,
        autoPlay: true,
      ),
    );
  }
}
