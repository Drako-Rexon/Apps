import 'dart:async';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rolling_dice/homescreen.dart';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return Timer(Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  void dispose() {
    super.dispose();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.lime, Colors.lightBlue],
            ),
          ),
          child: Shimmer.fromColors(
            baseColor: const Color(0xff7f00ff),
            highlightColor: const Color(0xffe100ff),
            child: Text(
              "Let's Play",
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 80,
                shadows: <Shadow>[
                  Shadow(
                    blurRadius: 200,
                    color: Colors.black87,
                    offset: Offset.fromDirection(90, 20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
