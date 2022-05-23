import 'package:flutter/material.dart';
import 'package:play_store_clone/components/json.dart';
import 'package:play_store_clone/components/standard_colors.dart';

class TopBar extends StatefulWidget {
  TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    double devWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: devWidth - 60,
              decoration: BoxDecoration(
                color: UsedColors.myWhite,
                boxShadow: [
                  BoxShadow(
                    color: UsedColors.myGrey,
                    // offset: Offset(1, 1)
                    spreadRadius: 0.2,
                    blurRadius: 0.7,
                  ),
                ],
                borderRadius: const BorderRadius.all(
                  Radius.circular(3),
                ),
                border: Border.all(
                  color: UsedColors.myLightGrey,
                  width: 1,
                  style: BorderStyle.solid,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    child: Icon(
                      Icons.search,
                      color: UsedColors.myBlack,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: devWidth - 165,
                    child: TextField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        hintText: 'Search here',
                        hintMaxLines: 1,
                        contentPadding: EdgeInsets.symmetric(),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage:
                          const AssetImage('images/more/avatar.jpeg'),
                      backgroundColor: UsedColors.myGreen,
                    ),
                  ),
                ],
              ),
              // * This is for the above search bar
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(catagoryNav.length, (index) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 25,
                ),
                child: Text(
                  catagoryNav[index],
                  style: TextStyle(
                    color: UsedColors.myBlack,
                    fontSize: 12,
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
