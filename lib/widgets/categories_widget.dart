import 'package:flutter/material.dart';
import 'package:food_ordering_app/helpers/commons.dart';
import 'package:food_ordering_app/models/category.dart';

import 'custom_text.dart';

final categoryList = <Category>[
  Category(image: "salad.png", name: 'Salad'),
  Category(image: "steak.png", name: 'Steak'),
  Category(image: "fastfood.png", name: 'Fastfood'),
  Category(image: "fruits.png", name: 'Fruits'),
  Category(image: "icecream.png", name: 'Ice Cream'),
  Category(image: "beer.png", name: 'Beer'),
  Category(image: "seafood.png", name: 'Sea food'),
];

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: kBoxDecoration.copyWith(
                      color: kWhite,
                      boxShadow: [
                        BoxShadow(
                            color: kRed[50],
                            offset: Offset(4, 6),
                            blurRadius: 20)
                      ]),
                  child: Image.asset(
                    "images/${categoryList[i].image}",
                    width: 50,
                    height: 50,
                  ),
                ),
                SizedBox(height: 5),
                CustomText(
                  titleText: categoryList[i].name,
                  customFontSize: 14,
                  customColors: kBlack,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// BoxDecoration(
//                     color: kWhite,
//                     boxShadow: [
//                       BoxShadow(
//                           color: kRed[50], offset: Offset(4, 6), blurRadius: 20)
