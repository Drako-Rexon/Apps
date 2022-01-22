import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int leftDiceNumber = Random().nextInt(6) + 1, rightDiceNumber = Random().nextInt(6) + 1;

  void roll() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: null,
          tooltip: 'Navigation Menu',
        ),
        title: const Text('Dicey'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onDoubleTap: roll,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        image: AssetImage(
                            'assets/images/dice-$leftDiceNumber.png'),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onDoubleTap: roll,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        image: AssetImage(
                            'assets/images/dice-$rightDiceNumber.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            RaisedButton(
              color: Colors.lightGreen,
              onPressed: roll,
              child: const Text(
                'Roll',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
