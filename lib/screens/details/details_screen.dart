import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/body.dart';
import 'components/nav_for_details_page.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: navForDetailsPage(),
    );
  }
}
