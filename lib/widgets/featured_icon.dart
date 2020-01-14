import 'package:flutter/material.dart';
import 'package:food_ordering_app/commons.dart';

class FeaturedIcon extends StatelessWidget {
  final IconData iconData;

  const FeaturedIcon({this.iconData});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        decoration:
            kBoxDecoration.copyWith(borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Icon(iconData, color: kRed, size: 16),
        ),
      ),
    );
  }
}
