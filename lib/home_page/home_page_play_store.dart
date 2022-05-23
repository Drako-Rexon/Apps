import 'package:flutter/material.dart';
import 'package:play_store_clone/components/nav_bar.dart';
import 'package:play_store_clone/components/standard_colors.dart';
import 'package:play_store_clone/components/top_bar.dart';
import 'package:play_store_clone/redirecting_page.dart/redirecting.dart';

class HomePagePlayStore extends StatefulWidget {
  const HomePagePlayStore({Key? key}) : super(key: key);

  @override
  State<HomePagePlayStore> createState() => _HomePagePlayStoreState();
}

class _HomePagePlayStoreState extends State<HomePagePlayStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        titleSpacing: 0,
        elevation: 4,
        backgroundColor: UsedColors.myWhite,
        title: SafeArea(
          child: TopBar(),
        ),
      ),
      bottomNavigationBar: NavBarAll(),
      body: RedirectingPage(),
    );
  }
}
