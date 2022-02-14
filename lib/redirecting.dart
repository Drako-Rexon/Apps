import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List navIcons = [Feather.home, Feather.star, Entypo.palette, Feather.user];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: const IconButton(
          onPressed: null,
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: const TextField(
          onChanged: null,
          decoration: InputDecoration(hintText: 'Search'),
        ),
        actions: const <Widget>[
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Location',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: Icon(
              Icons.add_shopping_cart,
              size: 28,
            ),
          ),
        ],
      ),
      bottomNavigationBar: getNav(),
      body: getAppBody(),
    );
  }

  Widget getNav() {
    return Container(
      color: Colors.red,
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(navIcons.length, (index) {
            return IconButton(
              onPressed: null,
              icon: Icon(
                navIcons[index],
                color: Colors.white,
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget getAppBody() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: HomePage2(),
    );
  }
}
