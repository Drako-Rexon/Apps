import 'package:flutter/material.dart';
import 'package:play_store_clone/components/standard_colors.dart';

class CardHeadingTwo extends StatelessWidget {
  const CardHeadingTwo({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 26),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.headphones,
                color: UsedColors.myBlack,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: UsedColors.myBlack,
                ),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward,
            color: UsedColors.myBlack,
          )
        ],
      ),
    );
  }
}
