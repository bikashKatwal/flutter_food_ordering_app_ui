import 'package:flutter/material.dart';
import 'package:food_ordering_app/helpers/commons.dart';
import 'package:food_ordering_app/models/products.dart';
import 'package:food_ordering_app/widgets/custom_card.dart';
import 'package:food_ordering_app/widgets/custom_text.dart';

class ShoppingBagScreen extends StatefulWidget {
  @override
  _ShoppingBagScreenState createState() => _ShoppingBagScreenState();
}

class _ShoppingBagScreenState extends State<ShoppingBagScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
          iconTheme: IconThemeData(color: kBlack),
          actionsIconTheme: IconThemeData(color: kBlack),
          title: CustomText(titleText: 'Shopping Bag'),
          backgroundColor: kWhite,
          elevation: 0,
          centerTitle: true,
          actions: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.shopping_basket,
                    size: 30,
                  ),
                ),
                Positioned(
                  bottom: 15,
                  right: 8,
                  child: Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: kGrey, offset: Offset(2, 1), blurRadius: 3)
                        ]),
                    child: Center(
                      child: CustomText(
                        titleText: '2',
                        customFontSize: 10,
                        customColors: kRed,
                        customFontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: kWhite,
        body: Container(
          child: ListView.builder(
            itemCount: productsList.length,
            itemBuilder: (context, i) {
              Products _product = productsList[i];
              return CustomCard(
                products: _product,
              );
            },
          ),
        ),
      ),
    );
  }
}
