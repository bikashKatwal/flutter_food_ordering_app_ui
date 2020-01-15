import 'package:flutter/material.dart';
import 'package:food_ordering_app/commons.dart';
import 'package:food_ordering_app/widgets/categories_widget.dart';
import 'package:food_ordering_app/widgets/custom_bottomnavigationbar_widget.dart';
import 'package:food_ordering_app/widgets/custom_text.dart';
import 'package:food_ordering_app/widgets/featured_icon.dart';
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                titleText: 'Popular',
                customFontSize: 20,
                customColors: kGrey,
              ),
            ),
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      "images/pancakes.jpg",
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: FeaturedIcon(
                          iconData: Icons.favorite,
                          color: kWhite,
                          backGroundColor: kRed,
                          radius: 30,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.amber,
                              ),
                              CustomText(
                                titleText: '4.5',
                                customFontSize: 14,
                                customFontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.all(8),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: <Color>[
                            Colors.black.withOpacity(0.8),
                            Colors.black.withOpacity(0.7),
                            Colors.black.withOpacity(0.6),
                            Colors.black.withOpacity(0.5),
                            Colors.black.withOpacity(0.4),
                            Colors.black.withOpacity(0.3),
                            Colors.black.withOpacity(0.2),
                            Colors.black.withOpacity(0.1),
                            Colors.black.withOpacity(0.05),
                            Colors.black.withOpacity(0.03),
                            Colors.black.withOpacity(0.025),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Pancakes \n',
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: kWhite),
                                ),
                                TextSpan(
                                  text: 'by: ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: kWhite),
                                ),
                                TextSpan(
                                  text: 'Pizza hut',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: kWhite),
                                ),
                              ],
                              style: TextStyle(color: kBlack),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '\$${12.99}',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.normal,
                                    color: kWhite,
                                  ),
                                ),
                              ],
                              style: TextStyle(color: kBlack),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}
