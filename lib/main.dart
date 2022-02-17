import 'package:flutter/material.dart';
// import 'package:yoboresto/redirectPages.dart';
import 'package:yoboresto/account_check.dart';

var red = const Color(0xFFA41414);
var deepOrange = const Color(0xFFE46829);
var ivoryBlack = const Color(0xFF1C1C1C);
var midYellow = const Color(0xFFEC9A3D);
var lightGrey = const Color(0xFFDCDBCD);
var customWhite = const Color(0xFFFAF9F9);



void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    ),
  );
}
