import 'package:flutter/material.dart';
import 'package:play_store_clone/homepage.dart';
import 'package:play_store_clone/components/json.dart';
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
      home: const HomePage(),
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
    double devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        titleSpacing: 0,
        elevation: 4,
        backgroundColor: UsedColors.myWhite,
        title: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: devWidth - 60,
                    decoration: BoxDecoration(
                      color: UsedColors.myWhite,
                      boxShadow: [
                        BoxShadow(
                          color: UsedColors.myGrey,
                          // offset: Offset(1, 1)
                          spreadRadius: 0.2,
                          blurRadius: 0.7,
                        ),
                      ],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(3),
                      ),
                      border: Border.all(
                        color: UsedColors.myLightGrey,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          child: Icon(
                            Icons.search,
                            color: UsedColors.myBlack,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: devWidth - 165,
                          child: TextField(
                            onChanged: (value) {},
                            decoration: const InputDecoration(
                              hintText: 'Search here',
                              hintMaxLines: 1,
                              contentPadding: EdgeInsets.symmetric(),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          child: CircleAvatar(
                            radius: 16,
                            backgroundImage:
                                const AssetImage('images/more/avatar.jpeg'),
                            backgroundColor: UsedColors.myGreen,
                          ),
                        ),
                      ],
                    ),
                    /*This is for the above search bar*/
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(catagoryNav.length, (index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 25,
                      ),
                      child: Text(
                        catagoryNav[index],
                        style: TextStyle(
                          color: UsedColors.myBlack,
                          fontSize: 12,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
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
        color: UsedColors.myWhite,
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
                  color: activeTab == index ? UsedColors.myPerfectGreen : UsedColors.myGrey,
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
                    color: activeTab == index ? UsedColors.myPerfectGreen : UsedColors.myGrey,
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
