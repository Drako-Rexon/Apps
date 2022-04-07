import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/featured_plant.dart';
import 'package:plant_app/screens/home/components/header_with_search.dart';
import 'package:plant_app/screens/home/components/recomended.dart';
import 'package:plant_app/screens/home/components/title_with_more.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          headerWithSearch(size: size),
          titleWithMore(title: 'Recomended', press: () {}),
          recomendedPlants(),
          titleWithMore(title: 'Featured', press: () {}),
          featuredPlants(),
          SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}
