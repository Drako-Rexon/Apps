import 'package:flutter/material.dart';
import 'package:play_store_clone/main.dart';
import 'json.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double devWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(homeOneCards1.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 30,
                          bottom: 30,
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 25),
                          width: devWidth - 50,
                          height: 180,
                          decoration: BoxDecoration(
                            color: homeOneCards1[index]["color"],
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                homeOneCards1[index]["title"],
                                style: TextStyle(
                                  color: myLightGrey,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                homeOneCards1[index]["sub-title"],
                                style: TextStyle(
                                  color: myLightGrey,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                Text('data', style: TextStyle(color: myBlack,),),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(homeOneCards1.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 30,
                          bottom: 30,
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 25),
                          width: devWidth - 50,
                          height: 180,
                          decoration: BoxDecoration(
                            color: homeOneCards1[index]["color"],
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                homeOneCards1[index]["title"],
                                style: TextStyle(
                                  color: myLightGrey,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                homeOneCards1[index]["sub-title"],
                                style: TextStyle(
                                  color: myLightGrey,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
