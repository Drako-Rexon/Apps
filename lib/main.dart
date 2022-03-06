import 'package:flutter/material.dart';
// import 'package:play_store_clone/homepage.dart';
import 'package:play_store_clone/json.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

// * The below code is for the home

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List navIcons = [
    Icons.gamepad,
    Icons.apps,
    Icons.movie_filter_outlined,
    Icons.book_outlined,
  ];
  List navText = [
    "Games",
    "Apps",
    "Movies",
    "Books",
  ];

  int activeTab = 1;
  @override
  Widget build(BuildContext context) {
    double devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 6,
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Row(
              children: [/*This is for the above search bar*/],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(catagoryNav.length, (index) {
                      return Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        child: Text(
                          catagoryNav[index],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: getNavBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return Container();
  }

  Widget getNavBar() {
    double devWidth = MediaQuery.of(context).size.width;
    return Container(
      width: devWidth,
      height: 74,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 2,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 34,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(navIcons.length, (index) {
            return Column(
              children: [
                IconButton(
                  color: activeTab == index ? Colors.green : Colors.grey,
                  onPressed: () {
                    setState(() {
                      activeTab = index;
                    });
                  },
                  icon: Icon(
                    navIcons[index],
                  ),
                ),
                Text(
                  navText[index],
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
