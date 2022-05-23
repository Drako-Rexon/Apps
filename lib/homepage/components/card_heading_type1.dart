import 'package:flutter/material.dart';
import 'package:play_store_clone/components/standard_colors.dart';

class CardHeadingOne extends StatelessWidget {
  const CardHeadingOne({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: UsedColors.myBlack,
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.arrow_forward,
              color: UsedColors.myBlack,
            ),
          )
        ],
      ),
    );
  }
}
