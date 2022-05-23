import 'package:flutter/material.dart';
import 'package:play_store_clone/components/nav_bar.dart';
import 'package:play_store_clone/components/top_bar.dart';
import 'package:play_store_clone/redirecting_page.dart/redirecting.dart';
import 'components/standard_colors.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Play Store',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(1, 255, 70, 126),
        // primarySwatch: Color.fromARGB(1, 255, 70, 126),
      ),
      home: const HomePagePlayStore(),
    ),
  );
}

// * The below code is for the home

class HomePagePlayStore extends StatefulWidget {
  const HomePagePlayStore({Key? key}) : super(key: key);

  @override
  State<HomePagePlayStore> createState() => _HomePagePlayStoreState();
}

class _HomePagePlayStoreState extends State<HomePagePlayStore> {
  @override
  Widget build(BuildContext context) {
    double devWidth = MediaQuery.of(context).size.width;
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
