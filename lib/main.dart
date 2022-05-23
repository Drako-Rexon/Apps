import 'package:flutter/material.dart';
import 'package:play_store_clone/home_page/home_page_play_store.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Play Store',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(1, 255, 70, 126)
      ),
      home: const HomePagePlayStore(),
    ),
  );
}