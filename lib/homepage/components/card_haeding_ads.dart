import 'package:flutter/material.dart';
import 'package:play_store_clone/components/standard_colors.dart';

class CardHeadingAds extends StatelessWidget {
  const CardHeadingAds({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Ads',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Icon(
              Icons.circle,
              size: 4,
            ),
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
    );
  }
}
