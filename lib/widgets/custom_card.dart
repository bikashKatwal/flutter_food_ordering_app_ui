import 'package:flutter/material.dart';
import 'package:food_ordering_app/helpers/commons.dart';
import 'package:food_ordering_app/models/products.dart';
import 'package:food_ordering_app/widgets/custom_button.dart';
import 'package:food_ordering_app/widgets/custom_text.dart';

class CustomCard extends StatelessWidget {
  final Products products;

  const CustomCard({@required this.products});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.all(10),
      decoration: kBoxDecoration,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            "images/${products.image}",
            height: 120,
            width: 120,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomText(
                        titleText: products.name,
                        customFontWeight: FontWeight.bold,
                        customFontSize: 20,
                      ),
                      Icon(Icons.delete_outline)
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: CustomText(
                        titleText: '\$${products.price}',
                        customFontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    CustomButton(
                      iconButtonSize: 16,
                      text: CustomText(
                        titleText: '1 items',
                        customFontSize: 14,
                        customColors: kWhite,
                        customFontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: <Widget>[
//               CustomButton(
//                 text: CustomText(
//                   titleText: 'Add To',
//                   customColors: kWhite,
//                   customFontSize: 14,
//                 ),
//               ),
//             ],
//           ),
