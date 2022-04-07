import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

class iconCard extends StatelessWidget {
  const iconCard({
    Key? key,
    this.icon,
  }) : super(key: key);

  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: 60,
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 0.53),
        padding: EdgeInsets.all(kDefaultPadding / 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 22,
              color: kPrimaryColor.withOpacity(0.22),
            ),
            BoxShadow(
              offset: Offset(-15, -15),
              blurRadius: 22,
              color: Colors.white,
            ),
          ],
        ),
        child: SvgPicture.asset(icon!));
  }
}
