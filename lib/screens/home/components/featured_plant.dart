import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class featuredPlantsCard extends StatelessWidget {
  const featuredPlantsCard({
    Key? key,
    this.press,
    this.image,
  }) : super(key: key);

  final VoidCallback? press;
  final String? image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          top: kDefaultPadding / 2,
          left: kDefaultPadding,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 190,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image!),
          ),
        ),
      ),
    );
  }
}
