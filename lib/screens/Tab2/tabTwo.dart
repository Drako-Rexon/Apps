import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:temp_chat/screens/Tab2/components/chat_card.dart';
import 'package:temp_chat/text.dart';

class TabTwo extends StatelessWidget {
  const TabTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(messages.length, (index) {
            return ChatCardEach(
              name: messages[index]['person'],
              time: messages[index]['time'],
              msg: messages[index]['text'],
              img: messages[index]['img'],
            );
          }),
        ),
      ),
    );
  }
}


// class MenuItem {
//   final String text;
//   final IconData icon;

//   const MenuItem({
//     required this.text,
//     required this.icon,
//   });
// }

// class MenuItems {
//   static const itemTemp1 = MenuItem(text: 'temp1', icon: Icons.access_alarms);
//   static const itemTemp2 = MenuItem(text: 'temp2', icon: Icons.access_alarms);
//   static const itemTemp3 = MenuItem(text: 'temp3', icon: Icons.access_alarms);
// }

