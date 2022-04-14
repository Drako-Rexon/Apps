import 'package:flutter/material.dart';
import 'package:salon/components/colors_used.dart';
import 'package:salon/components/json_used.dart';
import 'package:salon/home/components/big_card.dart';
import 'package:salon/home/components/bottom_nav_bar.dart';
import 'package:salon/home/components/card_heading.dart';
import 'package:salon/home/components/nav_container.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    List navIcons = [
      Icons.home,
      Icons.calendar_month,
      Icons.location_on,
      Icons.message,
      Icons.account_circle
    ];
    List navIconName = [
      "Home",
      "Bookings",
      "Nearby",
      "Message",
      "Account",
    ];
    Size devSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              NavConatiner(),
              CardHeading(title: 'Highest Rated'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: BigCardWidget(devSize: devSize),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(
          navIcons: navIcons,
          navIconName: navIconName,
        ),
      ),
    );
  }
}
