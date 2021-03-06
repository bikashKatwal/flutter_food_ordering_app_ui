import 'package:flutter/material.dart';
import 'package:food_ordering_app/widgets/custom_bottomnavbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomBottomNavigation(),
    );
  }
}
