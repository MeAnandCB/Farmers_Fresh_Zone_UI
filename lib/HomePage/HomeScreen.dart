// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../CarouselSlider/CarouselSlider.dart';
import '../Our_Blog_Container/OurBlogContainer.dart';
import '../CarouselSlider/reviewCarousel.dart';
import '../bottomNavigationBar/BottomNavigationBar.dart';
import '../color/constant.dart';
import '../gridView/GridView02.dart';
import '../gridView/Gridview.dart';
import '../bottomScrollContainer/bottomScrol.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    List ItemsList = [
      'https://res.cloudinary.com/farmersfreshzone/image/upload/v1638787119/Product/jghu86qgjdtnsvlyvnkl.jpg',
      'https://res.cloudinary.com/farmersfreshzone/image/upload/c_scale,h_250,w_250/c_scale,w_2081/v1598435631/Product/ujnkolanbenh0c9yfmq9.jpg',
      'https://res.cloudinary.com/farmersfreshzone/image/upload/c_scale,h_250,w_250/c_scale,w_2081/v1598435765/Product/tssgwn0eeejipf8mhfd2.jpg',
      'https://res.cloudinary.com/farmersfreshzone/image/upload/t_media_thumb/v1647846649/product/szrvdnx1hccgow8ik5if.jpg',
      'https://res.cloudinary.com/farmersfreshzone/image/upload/t_media_thumb/v1647933526/product/t4fr66dtajglazzhffia.jpg',
      'https://res.cloudinary.com/farmersfreshzone/image/upload/t_media_thumb/v1647933525/product/kayzgbtyrzup3uiiflhu.jpg',
      'https://res.cloudinary.com/farmersfreshzone/image/upload/c_limit,h_250,w_250/v1647933527/product/zvdh4kjocprnhr7zm2di.jpg',
      'https://res.cloudinary.com/farmersfreshzone/image/upload/v1656304012/product/na8yccnwj6ekyce8b5z8.jpg'
    ];
    List MainHead = [
      'Offers',
      'Vegitable',
      'Fruits',
      'Exotic',
      'Fresh Cuts',
      'Nutrition Chargers',
      'Packed Flavors',
      'Gourmet Salads'
    ];

    List FirstCourselSliderList = [
      'images/main.jpg',
      'images/main3.jpg',
      'images/main4.jpg',
      'images/main5.jpg',
    ];

    List SecondCourselSliderList = [
      'images/banner.jpg',
      'images/banner2.jpg',
    ];

    List StoreItems = [
      {
        'Image':
            'https://img.freepik.com/premium-vector/carrot-image-ripe-carrot-vitamin-vegetable-organic-food-orange-carrots-vector-illustration-isolated-white-background_538993-719.jpg?size=338&ext=jpg&uid=R89487700&ga=GA1.1.862767236.1673153802&semt=sph',
        'Name': 'Carrot',
        'Rate': '34',
        'Qty': '0.05kg',
      },
      {
        'Image':
            'https://img.freepik.com/free-photo/bananas_1339-1187.jpg?size=626&ext=jpg&uid=R89487700&ga=GA1.1.862767236.1673153802&semt=sph',
        'Name': 'Banana',
        'Rate': '34.5',
        'Qty': '0.05kg',
      },
      {
        'Image':
            'https://img.freepik.com/free-photo/fresh-broccoli-isolated_144627-30009.jpg?size=626&ext=jpg&uid=R89487700&ga=GA1.1.862767236.1673153802&semt=sph',
        'Name': 'Brocoli Florets',
        'Rate': '99',
        'Qty': '1.00 NOS',
      },
      {
        'Image':
            'https://img.freepik.com/free-photo/delicious-potatoes-white-background_1203-1899.jpg?size=626&ext=jpg&uid=R89487700&ga=GA1.1.862767236.1673153802&semt=sph',
        'Name': 'potato',
        'Rate': '23',
        'Qty': '0.05kg',
      },
    ];

    List Blog_Items = [
      {
        'image':
            'https://blog.farmersfz.com/content/images/size/w1000/2022/08/marcelo-leal-k7ll1hpdhFA-unsplash.jpg',
        'title': 'Control Blood Pressure, the right way!',
        'time': '1 months ago',
      },
      {
        'image':
            'https://blog.farmersfz.com/content/images/size/w600/2022/07/mockup-graphics-l55IGtwI8mI-unsplash.jpg',
        'title': 'Five reasons why Broccoli should be a part of your diet!',
        'time': '2 months ago',
      },
      {
        'image':
            'https://blog.farmersfz.com/content/images/2022/07/towfiqu-barbhuiya-C-zwLtPSErc-unsplash.jpg',
        'title':
            'Five tips that prevent you from going “Achhooooooo” 🤧 this Monsoon!',
        'time': '3 months ago',
      },
      {
        'image':
            'https://blog.farmersfz.com/content/images/size/w1000/2022/06/sharon-pittaway-KUZnfk-2DSQ-unsplash.jpg',
        'title': 'Best Vegetable Juices For Your Health',
        'time': '4 months ago',
      },
      {
        'image':
            'https://blog.farmersfz.com/content/images/size/w600/2022/04/chol.png',
        'title': 'Cholesterol & human the body',
        'time': '5 months ago',
      }
    ];

    return Scaffold(
        body: CustomScrollView(
          // ignore: prefer_const_literals_to_create_immutables
          slivers: [
            SliverAppBar(
              backgroundColor: Main_Green,
              title: Text('Farmers Fresh zone'),
              actions: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(Icons.location_on_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Kochi',
                      style: TextStyle(fontSize: 18),
                    ),
                    Icon(Icons.keyboard_arrow_down_rounded),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
              expandedHeight: 110,
              forceElevated: true,
              pinned: true,
              flexibleSpace: ListView(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Row(children: <Widget>[
                    Expanded(
                      // ignore: sort_child_properties_last
                      child: Container(
                        margin: EdgeInsets.only(right: 15, left: 20),
                        alignment: Alignment.center,
                        height: 38.0,
                        padding: EdgeInsets.only(left: 16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Search for Vegitables, Fruits..'),
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Chip(
                            label: Text(MainHead[index]),
                            backgroundColor: Titile_Color,
                          ),
                        ),
                    itemCount: MainHead.length),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CourselSliderContainer(
                        FirstCourselSliderList: FirstCourselSliderList),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Main_Green, width: 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    child: Image.asset('images/1.png'),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '30 Minute Policy',
                                    style: TextStyle(fontSize: 11),
                                  )
                                ],
                              ),
                              Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('images/Untitled-1.png'),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '30 Minute Policy',
                                    style: TextStyle(fontSize: 11),
                                  )
                                ],
                              ),
                              Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('images/far.png'),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '30 Minute Policy',
                                    style: TextStyle(fontSize: 11),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Shop By Category',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 5,
                      ),
                      child: GriViewContainer(
                        ItemsList: ItemsList,
                        chips: MainHead,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 7,
                      color: Colors.grey.shade200,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: CourselSliderContainer(
                          FirstCourselSliderList: SecondCourselSliderList),
                    ),
                    Container(
                      height: 7,
                      color: Colors.grey.shade200,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Best Selling Products',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GriViewContainerTwo(
                      StoreItems: StoreItems,
                    ),
                    Center(
                      child: Text(
                        'VIEW MORE',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Main_Green),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Image(image: AssetImage('images/banner3.jpg')),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Our Blog Posts',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    OurBlogContainer(
                      Blog_Items: Blog_Items,
                    ),
                    Center(
                      child: Text(
                        'VIEW MORE',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Main_Green),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 8,
                      color: Colors.grey.shade300,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'What Our Customers Say',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade700),
                      ),
                    ),
                    reviewCourselSliderContainer(),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'This Kochi-based-farm-to-fork online marketplace is\n connecting farmers directly to customers',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade700,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/9/9a/The_Economic_Times_logo.png',
                          width: 100,
                        ),
                        Image.network(
                          'https://files.startupranking.com/startup/thumb/8034_2064627540c3c27254a71b819c5011a6bb226729_yourstory_m.png',
                          width: 50,
                        ),
                        Image.network(
                          'https://marketing.readwhere.com/newindian-logo.png',
                          width: 60,
                        ),
                        Image.network(
                          'https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Manorama_News.svg/150px-Manorama_News.svg.png',
                          width: 30,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Divider(
                      thickness: 8,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title: const Text(
                        'Get To Know Us',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      subtitle: Wrap(
                        children: const [
                          Text('About Us   |', style: TextStyle(fontSize: 12)),
                          SizedBox(width: 10),
                          Text('About Us   |', style: TextStyle(fontSize: 12)),
                          SizedBox(width: 10),
                          Text('About Us  ', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Useful Links',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      subtitle: Wrap(
                        children: const [
                          Text('Privacy Policy   |',
                              style: TextStyle(fontSize: 12)),
                          SizedBox(width: 10),
                          Text('Return & Refund Policy   |',
                              style: TextStyle(fontSize: 12)),
                          SizedBox(width: 10),
                          Text('Terms & Condition  ',
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 30),
                          FaIcon(
                            FontAwesomeIcons.youtube,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 30),
                          FaIcon(
                            FontAwesomeIcons.facebook,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 30),
                          FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      color: Color(0xff01b748),
                      child: Text(
                          'Copyright © 2023 Farmers Fresh Zone . All Rights Reserved. V 2.40.22',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                    )
                  ],
                ),
              ]),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigation());
  }
}
