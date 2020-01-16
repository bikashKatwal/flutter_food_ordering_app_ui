import 'package:flutter/material.dart';
import 'package:food_ordering_app/helpers/commons.dart';
import 'package:food_ordering_app/widgets/custom_icon_button.dart';
import 'package:food_ordering_app/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  final CustomText text;
  final Function onCustomIconButtonPressed;
  final Function onGestureDetectorTap;
  final double iconButtonSize;
  final Color colorIconButton;

  const CustomButton(
      {@required this.text,
      this.onCustomIconButtonPressed,
      this.onGestureDetectorTap,
      this.iconButtonSize,
      this.colorIconButton});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CustomIconButton(
          iconData: Icons.remove,
          onPress: onCustomIconButtonPressed,
          size: iconButtonSize,
          color: colorIconButton,
        ),
        GestureDetector(
          onTap: onGestureDetectorTap,
          child: Container(
            decoration: BoxDecoration(
              color: kRed,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: text,
            ),
          ),
        ),
        CustomIconButton(
          iconData: Icons.add,
          onPress: onCustomIconButtonPressed,
          size: iconButtonSize,
          color: colorIconButton,
        ),
      ],
    );
  }
}
