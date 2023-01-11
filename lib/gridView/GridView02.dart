import 'package:flutter/material.dart';
import 'package:veg_app/color/constant.dart';

class GriViewContainerTwo extends StatelessWidget {
  final List StoreItems;
  const GriViewContainerTwo({
    required this.StoreItems,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(7),
        child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: StoreItems.length,
          // ignore: prefer_const_constructors
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: .80,
              crossAxisCount: 2,
              crossAxisSpacing: 7,
              mainAxisSpacing: 7),
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: double.infinity,
              child: Card(
                semanticContainer: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 8,
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                          image: NetworkImage(StoreItems[index]['Image']),
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
                            StoreItems[index]['Name'],
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '₹${StoreItems[index]['Rate']}',
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                StoreItems[index]['Qty'],
                                style: TextStyle(fontSize: 15),
                              ),
                              Container(
                                height: 25,
                                width: 65,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Main_Green,
                                ),
                                child: Center(
                                  child: Text(
                                    'ADD',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
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
            );
          },
        ));
  }
}
