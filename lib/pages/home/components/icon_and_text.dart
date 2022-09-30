import 'package:flutter/material.dart';
import '../../../components/dimensions.dart';

class IconAndTextWidget extends StatelessWidget {
  const IconAndTextWidget({
    Key? key,
    required this.icon,
    required this.color,
    required this.iconColor,
    required this.title,
    this.sizeOfIcon = 24,
  }) : super(key: key);
  final double sizeOfIcon;
  final IconData icon;
  final Color color;
  final Color iconColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: iconColor,
          size: sizeOfIcon == 24 ? Dimensions.iconSize24 : sizeOfIcon,
        ),
        SizedBox(
          width: Dimensions.width10 / 2,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 13,
            color: color,
          ),
        ),
        // SizedBox(
        //   width: 10,
        // ),
      ],
    );
  }
}
