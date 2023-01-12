// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class GriViewContainer extends StatelessWidget {
  final List ItemsList;
  final List chips;
  const GriViewContainer({required this.ItemsList, required this.chips});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        // ignore: prefer_const_constructors
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1,
            crossAxisSpacing: 2,
            mainAxisSpacing: 5),
        itemCount: ItemsList.length,
        itemBuilder: (BuildContext ctx, index) {
          // ignore: prefer_const_constructors, avoid_unnecessary_containers
          return Container(
            child: Card(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(ItemsList[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    chips[index],
                    style: TextStyle(fontSize: 11),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
