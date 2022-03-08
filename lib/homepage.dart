import 'package:flutter/material.dart';
import 'package:play_store_clone/main.dart';
import 'json.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
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
                          padding: const EdgeInsets.only(left: 25),
                          width: devWidth - 50,
                          height: 180,
                          decoration: BoxDecoration(
                            color: homeOneCards1[index]["color"],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(14)),
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
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  'Casual Games',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: myBlack,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    // * this list generate is for creating a single card in row
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
                          height: 240,
                          child: Column(
                            children: [
                              Container(
                                height: 160,
                                width: devWidth - 50,
                                decoration: const BoxDecoration(
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
                                      width: 55,
                                      height: 55,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "images/icons/coc.png"),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                      top: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          homeOneCards2[index]["title"],
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              homeOneCards2[index]["catagory1"],
                                              style: const TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3),
                                              child: Icon(
                                                Icons.circle,
                                                size: 4,
                                              ),
                                            ),
                                            Text(
                                              homeOneCards2[index]["catagory2"],
                                              style: const TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3),
                                              child: Icon(
                                                Icons.circle,
                                                size: 4,
                                              ),
                                            ),
                                            Text(
                                              homeOneCards2[index]["catagory3"],
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 3),
                                              child: Icon(
                                                Icons.circle,
                                                size: 4,
                                              ),
                                            ),
                                            Text(
                                              homeOneCards2[index]["mode"],
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              homeOneCards2[index]['rating'],
                                              style: const TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 7.0),
                                              child: Icon(
                                                Icons.star,
                                                size: 8,
                                              ),
                                            ),
                                            Text(
                                              homeOneCards2[index]['size'],
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
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
                    // * here the generating a single card is ended
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 26),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.headphones,
                          color: myGrey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Editor's Choice games",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    // * this list generate is for creating a single card in row
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
                          height: 240,
                          child: Column(
                            children: [
                              Container(
                                height: 160,
                                width: devWidth - 50,
                                decoration: const BoxDecoration(
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
                                      width: 55,
                                      height: 55,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "images/icons/coc.png"),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                      top: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          homeOneCards2[index]["title"],
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              homeOneCards2[index]["catagory1"],
                                              style: const TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3),
                                              child: Icon(
                                                Icons.circle,
                                                size: 4,
                                              ),
                                            ),
                                            Text(
                                              homeOneCards2[index]["catagory2"],
                                              style: const TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3),
                                              child: Icon(
                                                Icons.circle,
                                                size: 4,
                                              ),
                                            ),
                                            Text(
                                              homeOneCards2[index]["catagory3"],
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 3),
                                              child: Icon(
                                                Icons.circle,
                                                size: 4,
                                              ),
                                            ),
                                            Text(
                                              homeOneCards2[index]["mode"],
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              homeOneCards2[index]['rating'],
                                              style: const TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 7.0),
                                              child: Icon(
                                                Icons.star,
                                                size: 8,
                                              ),
                                            ),
                                            Text(
                                              homeOneCards2[index]['size'],
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
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
                    // * here the generating a single card is ended
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Ads',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Icon(
                        Icons.circle,
                        size: 4,
                      ),
                    ),
                    Text(
                      'Suggested for you',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: myBlack,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
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
                          width: devWidth - 180,
                          height: 240,
                          child: Column(
                            children: [
                              Container(
                                height: 90,
                                width: devWidth - 50,
                                decoration: const BoxDecoration(
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
                                      width: 55,
                                      height: 55,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "images/icons/coc.png"),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                      top: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          homeOneCards2[index]["title"],
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              homeOneCards2[index]["catagory1"],
                                              style: const TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3),
                                              child: Icon(
                                                Icons.circle,
                                                size: 4,
                                              ),
                                            ),
                                            Text(
                                              homeOneCards2[index]["catagory2"],
                                              style: const TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              homeOneCards2[index]['rating'],
                                              style: const TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 7.0),
                                              child: Icon(
                                                Icons.star,
                                                size: 8,
                                              ),
                                            ),
                                            Text(
                                              homeOneCards2[index]['size'],
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
