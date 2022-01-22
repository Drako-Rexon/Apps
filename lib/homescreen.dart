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
  late CurvedAnimation curveAnimation;

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
    _control = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    curveAnimation =
        CurvedAnimation(parent: _control, curve: Curves.bounceInOut);

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
            SizedBox(
              height: 300,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onDoubleTap: roll,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          height: 100 - (curveAnimation.value) * 100,
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
                          height: 100 - (curveAnimation.value) * 100,
                          image: AssetImage(
                              'assets/images/dice-$rightDiceNumber.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
