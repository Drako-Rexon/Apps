import 'package:flutter/material.dart';

class TopIcon extends StatelessWidget {
  TopIcon({
    Key? key,
    required this.icon,
    this.iconColor = const Color(0xFF756d54),
    this.backGroundColor = const Color(0xFFfcf4e4),
    this.size = 40,
    this.iconSize = 16,
  }) : super(key: key);
  final double? iconSize;
  final IconData icon;
  final Color iconColor;
  final Color backGroundColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        color: backGroundColor,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize!,
      ),
    );
  }
}
