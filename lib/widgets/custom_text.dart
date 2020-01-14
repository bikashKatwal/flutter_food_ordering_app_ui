import 'package:flutter/material.dart';
import 'package:food_ordering_app/commons.dart';

class CustomText extends StatelessWidget {
  final String titleText;
  final double customFontSize;
  final Color customColors;
  final FontWeight customFontWeight;

  const CustomText(
      {@required this.titleText,
      this.customFontSize,
      this.customColors,
      this.customFontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: TextStyle(
        fontSize: customFontSize ?? 16,
        color: customColors ?? kBlack,
        fontWeight: customFontWeight ?? FontWeight.normal,
      ),
    );
  }
}
