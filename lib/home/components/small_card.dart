import 'package:flutter/material.dart';
import 'package:salon/components/json_used.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Row(
        children: List.generate(smallCardData.length, (index2) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 4),
            margin: EdgeInsets.only(right: 8, left: 7),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: smallCardData[index2]['color'],
              borderRadius: BorderRadius.all(Radius.circular(13)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  smallCardData[index2]['name'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontFamily: 'PoppinsMed',
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
