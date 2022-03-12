import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:play_store_clone/main.dart';
import 'json.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var _currentIndex = 0;
  List listThumbs = ['images/more/coc_cover.jpg'];
  @override
  Widget build(BuildContext context) {
    double devWidth = MediaQuery.of(context).size.width;
    double devHeight = MediaQuery.of(context).size.height;
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
                  padding: const EdgeInsets.only(left: 13),
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
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                homeOneCards1[index]["sub-title"],
                                style: TextStyle(
                                  color: myLightGrey,
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Casual Games',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: myBlack,
                      ),
                    ),
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.arrow_forward,
                        color: myBlack,
                      ),
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
                                      top: 8,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                          height: 6,
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
                                              homeOneCards2[index]["mode"],
                                              style: const TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
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
                                              style: const TextStyle(
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
                          color: myBlack,
                        ),
                        const SizedBox(
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
                                      top: 8,
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
                                          height: 6,
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
                                              homeOneCards2[index]["mode"],
                                              style: const TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
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
                                              style: const TextStyle(
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
                    const Text(
                      'Ads',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
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
                  child: Container(
                    child: Row(
                      children: List.generate(homeOneCards2.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 30,
                          ),
                          child: Container(
                            // ! color: myPerfectGreen,
                            // * This is for testing a card's limit
                            width: devWidth - 180,
                            height: 175,
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
                                      image: AssetImage(
                                          "images/more/coc_cover.jpg"),
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
                                        top: 8,
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
                                            height: 6,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                homeOneCards2[index]
                                                    ["catagory1"],
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
                                                homeOneCards2[index]
                                                    ["catagory2"],
                                                style: const TextStyle(
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
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
                                                style: const TextStyle(
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
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
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
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                homeOneCards1[index]["sub-title"],
                                style: TextStyle(
                                  color: myLightGrey,
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
              ),

              // CarouselSlider(
              //   options: CarouselOptions(
              //     onPageChanged: (index, reason) {
              //       setState(() {
              //         _currentIndex = index; //<-- Page index
              //       });
              //     },
              //   ),
              //   // items: ,
              // ),
              // CarouselSlider(
              //   options: CarouselOptions(
              //     enlargeCenterPage: true,
              //     enableInfiniteScroll: true,
              //     autoPlay: true,
              //     // pageSnapping: true,
              //   ),
              //   items: listThumbs
              //       .map(
              //         (e) => ClipRRect(
              //           borderRadius: BorderRadius.circular(8),
              //           child: Stack(
              //             //fit: StackFit.expand,
              //             children: <Widget>[
              //               Image.network(
              //                 e,
              //                 width: devWidth - 50,
              //                 height: 200,
              //                 fit: BoxFit.cover,
              //               ),
              //               // Text(videObj.results[INDEX].name),
              //             ],
              //           ),
              //         ),
              //       )
              //       .toList(),
              // ),
              // ! here is the code for card type 2

              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Limited offer for you',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: myBlack,
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  top: 25,
                  bottom: 20,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: myWhite,
                    boxShadow: [
                      BoxShadow(
                        color: myBlack,
                        blurRadius: 1,
                        spreadRadius: 1.5,
                        blurStyle: BlurStyle.outer,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    border: Border.all(
                      color: myGrey,
                      width: 1.5,
                      style: BorderStyle.solid,
                    ),
                  ),
                  height: devHeight * 0.42,
                  width: devWidth - 60,
                  child: Column(children: [
                    Container(
                      height: devHeight * 0.2,
                      width: devWidth - 60,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          topLeft: Radius.circular(16),
                        ),
                        image: DecorationImage(
                          image: AssetImage('images/more/coc_cover.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18,
                        top: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                homeOneCards2[0]['title'],
                                style: TextStyle(
                                  fontSize: 13,
                                  color: myGrey,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Icon(
                                Icons.circle,
                                size: 4,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Ends on date',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: myGrey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text('Rs. 40 Google Play discount'),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Terms apply',
                            style: TextStyle(
                              color: myGrey,
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.zero),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(0, 255, 255, 255)),
                            ),
                            onPressed: null,
                            child: Text(
                              'Save offer',
                              style: TextStyle(
                                color: myGreen,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                    // RaisedButton(onPressed: null)
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
