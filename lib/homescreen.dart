import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int leftDiceNumber = Random().nextInt(6) + 1,
      rightDiceNumber = Random().nextInt(6) + 1;
  late AnimationController _control;

  @override
  void initState() {
    super.initState();
    animation();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void animation() {
    _control =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);

    _control.addListener(() {
      setState(() {});
      print(_control.value);
    });
    _control.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        print("Hurray! Completed!!!");
        _control.reverse();
        setState(() {
          leftDiceNumber = Random().nextInt(6) + 1;
          rightDiceNumber = Random().nextInt(6) + 1;
        });
      }
    });
  }

  void roll() {
    _control.forward();
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
                        height: 300 - (_control.value) * 300,
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
                        height: 300 - (_control.value) * 300,
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
