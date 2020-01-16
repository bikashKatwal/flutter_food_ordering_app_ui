import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ordering_app/helpers/commons.dart';
import 'package:food_ordering_app/helpers/screen_navigation.dart';

import 'package:food_ordering_app/models/products.dart';
import 'package:food_ordering_app/screens/details/product_details_page.dart';
import 'package:food_ordering_app/widgets/custom_text.dart';
import 'package:food_ordering_app/widgets/featured_icon.dart';

class FeaturedProducts extends StatelessWidget {
  Widget _buildIcons(int rate) {
    final _iconList = <Widget>[];
    for (int i = 0; i < 5; i++) {
      _iconList.add(Icon(Icons.star, color: i < rate ? kRed : kGrey, size: 16));
    }
    return Row(
      children: _iconList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productsList.length,
        itemBuilder: (_, i) => Padding(
          padding: const EdgeInsets.fromLTRB(12, 14, 16, 12),
          child: GestureDetector(
            onTap: () => changeScreen(
              context,
              ProductDetailsPage(products: productsList[i]),
            ),
            child: Container(
              height: 220,
              width: 200,
              decoration: kBoxDecoration.copyWith(boxShadow: [
                BoxShadow(
                    color: kRed[50], offset: Offset(15, 15), blurRadius: 30),
              ]),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FeaturedIcon(
                          iconData: productsList[i].wishList
                              ? Icons.favorite
                              : Icons.favorite_border,
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "images/${productsList[i].image}",
                    height: 140,
                    width: 140,
                    fit: BoxFit.cover,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(
                          titleText: productsList[i].name,
                        ),
                      ),
                      SizedBox(height: 4),
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: FeaturedIcon(
                          iconData: FontAwesomeIcons.locationArrow,
                          size: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: CustomText(
                              titleText: productsList[i].rating.toString(),
                              customColors: kGrey,
                              customFontSize: 14,
                            ),
                          ),
                          _buildIcons(productsList[i].rating.round()),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: CustomText(
                          titleText: '\$${productsList[i].price}',
                          customFontSize: 14,
                          customFontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
