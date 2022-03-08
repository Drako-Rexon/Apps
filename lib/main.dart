import 'package:flutter/material.dart';
import 'package:play_store_clone/homepage.dart';
import 'package:play_store_clone/json.dart';

var myWhite = const Color(0xFFFFFFFF);
var myGrey = const Color(0xFF7c8086);
var myGreen = const Color(0xFF49ff49);
var myPerfectGreen = const Color(0xFF00855e);
var myBlack = const Color.fromARGB(255, 22, 22, 22);
var myLightGrey = const Color(0xFFefeff0);

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Play Store',
      theme: ThemeData(
        primaryColor: Colors.blue,
        primarySwatch: Colors.yellow,
      ),
      home: const Home(),
    ),
  );
}

// * The below code is for the home

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

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

  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    // double devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 6,
        backgroundColor: myWhite,
        title: Column(
          children: [
            // Row(
            //   children: [],/*This is for the above search bar*/
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(catagoryNav.length, (index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        child: Text(
                          catagoryNav[index],
                          style: TextStyle(
                            color: myBlack,
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
    return IndexedStack(
      index: activeTab,
      children: [
        const HomePage(),
        Center(
          child: Text(
            navText[activeTab],
          ),
        ),
        Center(
          child: Text(
            navText[activeTab],
          ),
        ),
        Center(
          child: Text(
            navText[activeTab],
          ),
        ),
      ],
    );
  }

  Widget getNavBar() {
    double devWidth = MediaQuery.of(context).size.width;
    return Container(
      width: devWidth,
      height: 74,
      decoration: BoxDecoration(
        color: myWhite,
        boxShadow: const [
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
                  color: activeTab == index ? myPerfectGreen : myGrey,
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
                    color: activeTab == index ? myPerfectGreen : myGrey,
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
