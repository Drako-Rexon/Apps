import 'package:flutter/material.dart';
import 'package:play_store_clone/components/json.dart';
import 'package:play_store_clone/components/standard_colors.dart';

class TopCardFirst extends StatelessWidget {
  const TopCardFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double devWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 13, right: 13),
        child: Row(
          children: List.generate(homeOneCards1.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(
                left: 7,
                right: 8,
                top: 30,
                bottom: 30,
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 25),
                width: devWidth - 50,
                height: 120,
                decoration: BoxDecoration(
                  color: homeOneCards1[index]["color"],
                  borderRadius: const BorderRadius.all(Radius.circular(14)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      homeOneCards1[index]["title"],
                      style: TextStyle(
                        color: UsedColors.myLightGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      homeOneCards1[index]["sub-title"],
                      style: TextStyle(
                        color: UsedColors.myLightGrey,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
