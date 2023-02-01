import 'package:flutter/material.dart';
import 'package:temp_chat/screens/Tab1/tabOne.dart';
import 'package:temp_chat/screens/Tab2/tabTwo.dart';

class TabsWidget extends StatelessWidget {
  const TabsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.circle)),
              Tab(
                  icon: Icon(Icons
                      .arrow_back_ios)), //! Icons are chosen randomly, it has no meaning to anything
            ],
          ),
          title: const Text('Temp App'),
        ),
        body: TabBarView(
          children: [
            TabOne(), // ! redirecting to the tab one which is designed in another folder
            TabTwo(), // ! redirecting to the tab two which is designed in another folder
          ],
        ),
      ),
    );
  }
}
