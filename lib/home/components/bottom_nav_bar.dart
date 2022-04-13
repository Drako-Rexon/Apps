
import 'package:flutter/material.dart';
import 'package:salon/components/colors_used.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.navIcons,
    this.activeTab = 0,
    this.navIconName,
  }) : super(key: key);

  final List navIcons;
  final int? activeTab;
  final List? navIconName;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: 80,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.elliptical(16, 18),
          topRight: Radius.elliptical(16, 18),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            color: Colors.black.withOpacity(0.4),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      padding: EdgeInsets.only(
        right: 20,
        top: 16,
        left: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(navIcons.length, (index) {
          return Column(
            children: [
              Icon(
                navIcons[index],
                size: 30,
                color: index == activeTab
                    ? AppColors.gradient2
                    : Colors.grey.shade800,
                // onPressed: () {
                //   setState(() {
                //     activeTab = index;
                //   });
                // },
              ),
              Text(
                navIconName![index],
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 12,
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}



// IconButton(
              //   icon: Icon(
              //     navIcons[index],
              //     color: activeTab == index
              //         ? const Color(0xFF1ed661)
              //         : Colors.black,
              //   ),
              //   onPressed: () {
              //     setState(() {
              //       activeTab = index;
              //     });
              //   }, // ! This is not working now will se tomoroow
              // );