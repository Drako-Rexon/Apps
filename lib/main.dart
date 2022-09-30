import 'package:flutter/material.dart';

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

class _PianoState extends State<Piano> with TickerProviderStateMixin {
  AudioCache player = new AudioCache();
  List<Notes> notes = initNotes();
  AnimationController animationController;
  int currentNoteIndex = 0, points = 0;
  bool hasStarted = false, isPlaying = true;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 600,
      ),
    );
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed && isPlaying) {
        if (notes[currentNoteIndex].state != NoteState.tapped) {
          setState(() {
            isPlaying = false;
            notes[currentNoteIndex].state = NoteState.missed;
          });
          animationController.reverse().then((_) => _showFinishDialog());
        } else if (currentNoteIndex == notes.length - 5) {
          _showFinishDialog();
        } else {
          setState(() => ++currentNoteIndex);
          animationController.forward(from: 0);
        }
      }
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              _drawLine(0),
              LineDivider(),
              _drawLine(1),
              LineDivider,
              _drawLine(2),
              LineDivider,
              _drawLine(3),
              LineDivider,
            ],
          ),
          _drawPoints(),
        ],
      ),
    );
  }

  void _restart() {
    setState(() {
      hasStarted = false;
      isPlaying = true;
      notes = initNotes();
      points = 0;
      currentNoteIndex = 0;
    });
    animationController.reset();
  }

  void _showFinishDialog(){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: Text('Score: $points'),
          actions: [
            FlatButton(onPressed: () => Navigator.of(context).pop(),
            child: Text("RESTART"),),
          ],
        );
      },
    ).then((_) => _restart())
  }

  void onTap(Note notes){
    bool allPreviousTapped = notes.sublist(0, notes.orderNumber).every((n) => n.state)
  }

}
