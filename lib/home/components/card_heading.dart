import 'package:flutter/material.dart';
import 'package:salon/components/colors_used.dart';

class CardHeading extends StatelessWidget {
  const CardHeading({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        top: 14,
        bottom: 14,
        right: 6,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: AppColors.gradient3,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: 'PoppinsMed',
            ),
          ),
          FlatButton(
            onPressed: null,
            child: Text(
              'View all',
              style: TextStyle(
                  fontFamily: 'PoppinsMed',
                  fontWeight: FontWeight.w400,
                  color: AppColors.gradient3),
            ),
          ),
        ],
      ),
    );
  }
}
