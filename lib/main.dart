import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drako\'s piano tiles',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Piano(),
    );
  }
}

class Piano extends StatefulWidget {
  Piano({Key? key}) : super(key: key);

  @override
  State<Piano> createState() => _PianoState();
}

class _PianoState extends State<Piano> {

  AudioCache player = new AudioCache();


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
