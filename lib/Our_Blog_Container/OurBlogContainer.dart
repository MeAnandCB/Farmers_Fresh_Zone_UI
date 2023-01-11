// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../color/constant.dart';

class OurBlogContainer extends StatelessWidget {
  const OurBlogContainer({super.key, required this.Blog_Items});
  final List Blog_Items;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 170,
                  child: Card(
                    semanticContainer: true,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          child: Image(
                              image: NetworkImage(
                                Blog_Items[index]['image'],
                              ),
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Blog_Items[index]['title'],
                                style: TextStyle(fontSize: 15),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    Blog_Items[index]['time'],
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Main_Green,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          itemCount: Blog_Items.length),
    );
  }
}
