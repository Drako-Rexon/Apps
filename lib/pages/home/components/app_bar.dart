import 'package:ecom/components/big_text.dart';
import 'package:ecom/components/colors.dart';
import 'package:ecom/components/small_text.dart';
import '../../../components/dimensions.dart';
import 'package:flutter/material.dart';

class AppBarFood extends StatelessWidget {
  const AppBarFood({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Container(
        margin: EdgeInsets.only(
          top: Dimensions.height30,
          bottom: Dimensions.height15,
        ),
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                BigTextwidget(
                  text: 'India',
                  color: AppColors.mainColor,
                  size: 18,
                ),
                // ! TODO: This is for only UI we need to replace it with dropdown menu for changing address
                Row(
                  children: [
                    SmallTextWidget(
                      text: 'New Delhi',
                      color: Colors.black54,
                    ),
                    Icon(Icons.arrow_drop_down_rounded),
                  ],
                ),
              ],
            ),
            Container(
              height: Dimensions.height45,
              width: Dimensions.height45,
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: Dimensions.iconSize24,
              ),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(Dimensions.radius10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
