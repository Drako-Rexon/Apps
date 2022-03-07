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
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.headphones,
                            color: myGrey,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Editor's Choice games",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: myBlack,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: myGrey,
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(homeOneCards2.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 30,
                          bottom: 30,
                        ),
                        child: Container(
                          // ! color: myPerfectGreen, 
                          // * This is for testing a card's limit
                          width: devWidth - 50,
                          height: 180,
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: devWidth - 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(14),
                                  ),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("images/more/coc_cover.jpg"),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 14,
                                      right: 10,
                                    ),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(16),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "images/icons/coc.png"),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(homeOneCards2[index]["title"]),
                                        Row(
                                          children: [
                                            Text(homeOneCards2[index]["title"]),
                                            Icon(
                                              Icons.circle,
                                              size: 4,
                                            ),
                                            Text(homeOneCards2[index]
                                                ["catagory1"]),
                                            Icon(
                                              Icons.circle,
                                              size: 4,
                                            ),
                                            Text(homeOneCards2[index]
                                                ["catagory2"]),
                                            Icon(
                                              Icons.circle,
                                              size: 4,
                                            ),
                                            Text(homeOneCards2[index]
                                                ["catagory3"]),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(homeOneCards2[index]['rating']),
                                            Text('size'),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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
