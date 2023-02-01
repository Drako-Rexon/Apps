import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ChatCardEach extends StatelessWidget {
  const ChatCardEach({
    Key? key, this.name, this.msg, this.time, this.img,
  }) : super(key: key);

  final String? name, msg, time, img;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        dragDismissible: false,
        motion: BehindMotion(),
        children: [
          SlidableAction(
            onPressed: null,
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            label: 'Temp',
            icon: Icons.circle,
          ),
          SlidableAction(
            onPressed: (context) {
              PopupMenuButton(
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Text('data1'),
                          Icon(Icons.settings),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Text('data2'),
                          Icon(Icons.settings),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Text('data3'),
                          Icon(Icons.settings),
                        ],
                      ),
                    ),
                  ];
                },
              );
            },
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            icon: Icons.more_horiz,
            label: 'More',
          ),
        ],
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          foregroundImage: AssetImage(img!),
        ),
        title: Text(
          name!,
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w700,
          ),
        ),
        subtitle: Text(
          msg!,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          maxLines: 1,
        ),
        trailing: Text(
          time!,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
