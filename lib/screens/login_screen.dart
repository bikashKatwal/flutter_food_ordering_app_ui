import 'package:flutter/material.dart';
import 'package:food_ordering_app/helpers/commons.dart';
import 'package:food_ordering_app/widgets/custom_text.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhite,
        body: Stack(
          children: <Widget>[
            Image.asset(
              "images/foodlogo.jpg",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 200,
            ),
            Positioned(
              left: 10,
              top: 350,
              child: Container(
                height: MediaQuery.of(context).size.width - 225,
                width: MediaQuery.of(context).size.width - 20,
                decoration: kBoxDecoration,
                child: Column(
                  children: <Widget>[
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your email',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
