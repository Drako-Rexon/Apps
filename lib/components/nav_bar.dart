import 'package:flutter/material.dart';
import 'package:play_store_clone/components/json.dart';
import 'package:play_store_clone/components/standard_colors.dart';

class NavBarAll extends StatefulWidget {
  const NavBarAll({Key? key}) : super(key: key);

  @override
  State<NavBarAll> createState() => _NavBarAllState();
}

class _NavBarAllState extends State<NavBarAll> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    double devWidth = MediaQuery.of(context).size.width;
    return Container(
      width: devWidth,
      height: 74,
      decoration: BoxDecoration(
        color: UsedColors.myWhite,
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 2,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 34,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(ListItems.navIcons.length, (index) {
            return Column(
              children: [
                IconButton(
                  color: activeTab == index
                      ? UsedColors.myPerfectGreen
                      : UsedColors.myGrey,
                  onPressed: () {
                    setState(() {
                      activeTab = index;
                    });
                  },
                  icon: Icon(
                    ListItems.navIcons[index],
                  ),
                ),
                Text(
                  ListItems.navText[index],
                  style: TextStyle(
                    color: activeTab == index
                        ? UsedColors.myPerfectGreen
                        : UsedColors.myGrey,
                    fontSize: 12,
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
