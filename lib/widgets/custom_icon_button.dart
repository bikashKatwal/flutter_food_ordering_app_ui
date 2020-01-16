import 'package:flutter/material.dart';
import 'package:food_ordering_app/helpers/commons.dart';

class CustomIconButton extends StatelessWidget {
  final Function onPress;
  final IconData iconData;
  final double size;
  final Color color;

  const CustomIconButton(
      {@required this.iconData,
      @required this.onPress,
      this.size = 16,
      this.color = kBlack});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(iconData, size: size, color: color),
        onPressed: onPress,
      ),
    );
  }
}
