import 'package:flutter/material.dart';
import 'package:food_ordering_app/helpers/commons.dart';
import 'package:food_ordering_app/models/products.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:food_ordering_app/widgets/custom_text.dart';
import 'package:food_ordering_app/widgets/featured_icon.dart';

class ProductDetailsPage extends StatefulWidget {
  final Products products;

  const ProductDetailsPage({@required this.products});
  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhite,
        body: Column(
          children: <Widget>[
            Container(
              height: 300,
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    height: 300.0,
                    width: MediaQuery.of(context).size.width,
                    child: Carousel(
                      images: [
                        Image.asset(
                          'images/${widget.products.image}',
                          fit: BoxFit.fill,
                        ),
                        Image.asset(
                          'images/1.jpg',
                          fit: BoxFit.fill,
                        ),
                        Image.asset(
                          'images/2.jpeg',
                          fit: BoxFit.fill,
                        ),
                        Image.asset(
                          'images/3.jpeg',
                          fit: BoxFit.fill,
                        ),
                        Image.asset(
                          'images/4.jpg',
                          fit: BoxFit.fill,
                        ),
                        Image.asset(
                          'images/5.jpg',
                          fit: BoxFit.fill,
                        ),
                      ],
                      dotBgColor: kWhite,
                      dotColor: kGrey,
                      dotIncreasedColor: kRed,
                      dotIncreaseSize: 1.5,
                      autoplay: false,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                          color: kBlack,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                      Stack(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.shopping_basket,
                              size: 30,
                              color: kBlack,
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                          Positioned(
                            bottom: 8,
                            right: 8,
                            child: Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                  color: kWhite,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: kGrey,
                                        offset: Offset(2, 1),
                                        blurRadius: 3)
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
