import 'package:flutter/material.dart';
import 'package:food_ordering_app/commons.dart';
import 'package:food_ordering_app/widgets/categories_widget.dart';
import 'package:food_ordering_app/widgets/custom_bottomnavigationbar_widget.dart';
import 'package:food_ordering_app/widgets/custom_text.dart';
import 'package:food_ordering_app/widgets/featured_products.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    titleText: "What would you like to eat?",
                    customFontSize: 18,
                  ),
                ),
                Stack(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.notifications_none),
                      onPressed: () {},
                    ),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: kRed,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: CustomText(
                            titleText: '2',
                            customFontSize: 8,
                            customColors: kWhite,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: kBoxDecoration,
                child: ListTile(
                  leading: Icon(Icons.search, color: kRed),
                  trailing: Icon(Icons.filter_list, color: kRed),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Find a food or a Restaurant',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            CategoriesWidget(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                titleText: 'Featured',
                customFontSize: 20,
                customColors: kGrey,
              ),
            ),
            FeaturedProducts(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}
