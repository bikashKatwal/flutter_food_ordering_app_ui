import 'package:flutter/material.dart';
import 'package:food_ordering_app/helpers/commons.dart';

class FeaturedIcon extends StatelessWidget {
  final IconData iconData;
  final double size;
  final Color color;
  final Color backGroundColor;
  final double radius;

  const FeaturedIcon({
    @required this.iconData,
    this.size,
    this.color,
    this.backGroundColor,
    this.radius = 30,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kBoxDecoration.copyWith(
          color: backGroundColor ?? kWhite,
          borderRadius: BorderRadius.circular(radius)),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: <Widget>[
            Icon(iconData, color: color ?? kRed, size: size ?? 16),
          ],
        ),
      ),
    );
  }
}
