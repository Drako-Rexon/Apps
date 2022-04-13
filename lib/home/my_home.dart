import 'package:flutter/material.dart';
import 'package:salon/components/colors_used.dart';
import 'package:salon/home/components/bottom_nav_bar.dart';
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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              NavConatiner(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Highest Reated',
                    style: TextStyle(
                      color: AppColors.gradient3,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  FlatButton(
                    onPressed: null,
                    child: Text(
                      'View all',
                      style: TextStyle(
                          fontFamily: 'Adobe Clean',
                          fontWeight: FontWeight.w400,
                          color: AppColors.gradient3),
                    ),
                  ),
                ],
              ),
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
