import 'package:ecom/components/dimensions.dart';
import 'package:ecom/components/main_food_data.dart';
import 'package:flutter/material.dart';

class SmallCardStack extends StatelessWidget {
  const SmallCardStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size devSize = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: Dimensions.pageViewTextContainer,
        margin: EdgeInsets.symmetric(
          horizontal: Dimensions.width30,
          vertical: Dimensions.height30,
        ),
        decoration: BoxDecoration(
          boxShadow: const  [
            BoxShadow(
              offset: Offset(5, 5),
              blurRadius: 5,
              color: Color(0xFFe8e8e8),
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(5, 0),
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-5, 0),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius20)),
        ),
        child: Container(
          padding: EdgeInsets.only(
            top: Dimensions.height15,
            right: Dimensions.height15,
            left: Dimensions.height20,
            bottom: Dimensions.height20,
          ),
          child: const FoodMainData(text: "chinese slide",),
        ),
      ),
    );
  }
}
