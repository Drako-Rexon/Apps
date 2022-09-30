import 'package:flutter/material.dart';
import 'components/app_bar.dart';
import 'components/food_page_body.dart';

class FoodPageMain extends StatefulWidget {
  FoodPageMain({Key? key}) : super(key: key);

  @override
  State<FoodPageMain> createState() => _FoodPageMainState();
}

class _FoodPageMainState extends State<FoodPageMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBarFood(),
          Expanded(
            child: SingleChildScrollView(
              child: FoodPageBody(),
            ),
          ),
        ],
      ),
    );
  }
}
