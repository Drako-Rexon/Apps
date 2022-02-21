import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:yoboresto/homepage.dart';
import 'main.dart';

class RedirectPages extends StatefulWidget {
  RedirectPages({Key? key}) : super(key: key);

  @override
  State<RedirectPages> createState() => _RedirectPagesState();
}

class _RedirectPagesState extends State<RedirectPages> {
  List navIcons = [
    Icons.home_outlined,
    Icons.star_outlined,
    Icons.fastfood_outlined,
    Icons.food_bank_outlined,
    Feather.user
  ];

  List navIconsName = ["Home", "Favourites", "", "Orders", "Account"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: customWhite,
        leading: const IconButton(
          onPressed: null,
          icon: Icon(
            Icons.location_on_outlined,
            size: 25,
            color: Color(0xFFE46829),
          ),
        ),
        title: Column(
          children: [
            Row(
              children: const [
                Text(
                  'Home',
                  style: TextStyle(
                    color: Color(0xFFE46829),
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Text(
                  '223 Baker street, West front...',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              FontAwesome.bell,
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              FontAwesome.cart_arrow_down,
            ),
          ),
        ],
      ),
      bottomNavigationBar: getNav(),
      body: getBody(),
    );
  }

  Widget getNav() {
    return Container(
      height: 75,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            navIcons.length,
            (index) {
              return index == 2
                  ? Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: deepOrange,
                          child: Center(
                            child: IconButton(
                              onPressed: null,
                              icon: Icon(
                                navIcons[2],
                                size: 28,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        IconButton(
                          onPressed: null,
                          icon: Icon(
                            navIcons[index], //navIcons[0],
                            size: 28,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          navIconsName[index],
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    );
            },
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    return IndexedStack(
      children: [
        HomePage(),
        // Favourites(),
        // Order(),
        // Account(),
      ],
    );
  }
}
