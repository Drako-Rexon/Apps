import 'package:flutter/material.dart';
import 'package:play_store_clone/components/json.dart';
import 'package:play_store_clone/homepage/homepage.dart';

class RedirectingPage extends StatelessWidget {
  const RedirectingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int activeTab = 0;
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage(),
        Center(
          child: Text(ListItems.navText[activeTab]),
        ),
        Center(
          child: Text(ListItems.navText[activeTab]),
        ),
        Center(
          child: Text(ListItems.navText[activeTab]),
        ),
      ],
    );
  }
}
