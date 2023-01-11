// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../ReviewContainer/Review_Card.dart';
import '../color/constant.dart';

class reviewCourselSliderContainer extends StatelessWidget {
  List reviewCarrouselList = [
    {
      'Name': 'Rinish k n',
      'Designation': 'cto , RappidValue',
      'image':
          'data:image/jpeg;base64,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',
      'reviewText':
          'I was exremely pleased after seeing the initiative by Farmers Fresh Zone to connect the Farmer-Supplier-Customer ecosystem. One thing sets FFZ apart from the rest is definitely the fresh taste of their products. I also had a chance to visit their farm,it was a great experience to take a look at the beautiful farms!',
    },
    {
      'Name': 'Dinesh Thampi',
      'Designation': 'VP Operations, TCS',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcVXKzgkNPBQS7Al8Kf0tf7ka_jgBUZq_WkCk1RokajNuAckvT-KvCuR7Ta8nqAfpkr1k&usqp=CAU',
      'reviewText':
          'Being a customer of Farmers Fresh Zone, I can definitely say that I am extremely pleased with their service. You can choose from a wide range of "safe-to-eat" products, all of which are 100% Fresh & Natural. I appreciate their efforts in providing healthy food to the customer & helping the livelihood of farmers at the same time.',
    },
    {
      'Name': 'Prince P I',
      'Designation': 'Online digital marketing business',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShmPdKjOl3-gA1W7heAvjXEJTPVONFiLsQ3OKDCDIVpWlNpzIu_Q5i2qP1Wg-bGjJm_zo&usqp=CAU',
      'reviewText':
          'As concerned parents. we wanted our kids to eat pesticide-free & healthy food and thats how we came across Farmers Fresh Zone. Their fresh products &  prompt delivery is the reason we have been a part of the Farmers Fresh Zone family for almost three years now. Farmers Fresh Zone is the best solution to countless concerned parents like us! ',
    },
    {
      'Name': 'Hrishikesh Nair',
      'Designation': 'CEO , Infopark',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcVXKzgkNPBQS7Al8Kf0tf7ka_jgBUZq_WkCk1RokajNuAckvT-KvCuR7Ta8nqAfpkr1k&usqp=CAU',
      'reviewText':
          'I was exremely pleased after seeing the initiative by Farmers Fresh Zone to connect the Farmer-Supplier-Customer ecosystem. One thing sets FFZ apart from the rest is definitely the fresh taste of their products. I also had a chance to visit their farm,it was a great experience to take a look at the beautiful farms!',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: (context, index, realIndex) => ReviewCard(
        Name: reviewCarrouselList[index]['Name'],
        Designation: reviewCarrouselList[index]['Designation'],
        image: reviewCarrouselList[index]['image'],
        reviewText: reviewCarrouselList[index]['reviewText'],
      ),
      itemCount: reviewCarrouselList.length,
      options: CarouselOptions(
        pageSnapping: true,
        aspectRatio: 1.6,
        viewportFraction: 1,
        enableInfiniteScroll: true,
        autoPlay: true,
      ),
    );
  }
}
