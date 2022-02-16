import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:yoboresto/homepage.dart';


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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
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
          children: [
            Column(
              children: const [
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.home_outlined, //navIcons[0],
                    size: 28,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    // setState(() {
                    //   color:
                    //   Color(0xFFE46829);
                    // });
                  },
                  icon: Icon(
                    navIcons[1],
                    size: 28,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'Favourites',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: const Color(0xFFE46829),
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
                // Text(
                //   'Home',
                //   style: TextStyle(
                //     fontSize: 14,
                //   ),
                // ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    navIcons[3],
                    size: 28,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'Orders',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    navIcons[4],
                    size: 28,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'Account',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
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
