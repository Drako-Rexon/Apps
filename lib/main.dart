import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/profile-img.jpeg'),
              ),
              Text(
                'Drako Rexon',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'C++ Coder',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade200,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 60,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    '+91 93X XXXX X84',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 60,
                  horizontal: 60,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.indigo.shade700,
                  ),
                  title: Text(
                    'drakocodeforever@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
