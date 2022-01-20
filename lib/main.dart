import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/*
class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, Key? key}) : super(key: key);

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60, //in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[900]),
      // Row is a horizontal, linear layout.
      child: Row(
        // <Widget> is the type of items in the list.
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null disables the button
          ),
          // Expanded expands its child
          // to fill the available space.
          Expanded(
            child: title,
          ),
          // const IconButton(
          //   icon: Icon(Icons.logout),
          //   tooltip: 'Extra',
          //   onPressed: null,
          // ),
          // const IconButton(
          //   icon: Icon(Icons.search),
          //   tooltip: 'Search',
          //   onPressed: null,
          // ),
        ],
      ),
    );
  }
}
*/

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intro App',
      home: Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(
          leading: const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation Menu',
            onPressed: null,
          ),
          title: const Text(
            'Introduction APP',
            // color: Colors.white,
          ),
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.get_app),
              tooltip: 'Download',
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.code),
              tooltip: 'Coder',
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.exit_to_app),
              tooltip: 'Exit',
            ),
          ],
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 65,
          ),
          child: Column(
            children: [
              // MyAppBar(
              //   title: Text(
              //     'Introduction APP',
              //     style: Theme.of(context)
              //         .primaryTextTheme
              //         .headline6,
              //   ),
              // ),

              Column(
                // Wants to give margin between the app bar and the circle avatar
                // margin: EdgeInsets.symmetric(vertical: 90),
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const CircleAvatar(
                    radius: 80,
                    // tooltip: 'Drako',
                    backgroundImage: AssetImage('images/profile-img.jpeg'),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                    ),
                    child: Text(
                      'Drako Rexon',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    'C++ Coder',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  const Card(
                    color: Colors.white,
                    margin: EdgeInsets.only(
                      top: 25,
                      bottom: 10,
                      left: 50,
                      right: 50,
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.indigo,
                      ),
                      title: Text(
                        "+91 93X XXXX X84",
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: 50,
                      right: 50,
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.indigo.shade700,
                      ),
                      title: const Text(
                        'drakocodeforever@gmail.com',
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.black,
                          // fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // container 1
                        height: 45,
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.symmetric(
                          vertical: 11,
                          horizontal: 6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber.shade900,
                        ),
                        child: const Center(
                          child: Text(
                            'Contact Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // container 2
                        height: 45,
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.symmetric(
                          vertical: 11,
                          horizontal: 6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber.shade900,
                        ),
                        child: const Center(
                          child: Text(
                            'Download',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // container 3
                        height: 45,
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.symmetric(
                          vertical: 11,
                          horizontal: 6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber.shade900,
                        ),
                        child: const Center(
                          child: Text(
                            'Tap to build',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: const FloatingActionButton(
          // onPressed: null,
          backgroundColor: Colors.amber,
          tooltip: 'Add',
          onPressed: null,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
