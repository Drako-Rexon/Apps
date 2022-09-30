import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter/material.dart';
import 'package:pizza/pizzaJson.dart';

class HomePage2 extends StatefulWidget {
  HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ImageSlideshow(
            width: double.infinity,
            height: 200,
            initialPage: 0,
            indicatorColor: Colors.blue,
            indicatorBackgroundColor: Colors.grey,
            onPageChanged: (value) {
              debugPrint('Page changed: $value');
            },
            autoPlayInterval: 3000,
            isLoop: true,
            children: [
              Image.asset(
                'assets/images/1.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/2.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/3.jpg',
                fit: BoxFit.cover,
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Row(
                  children: List.generate(circleIcon.length, (index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24.0,
                            top: 10,
                            bottom: 10,
                          ),
                          child: Container(
                            height: 120,
                            width: 120,
                            child: Column(
                              children: [
                                const CircleAvatar(
                                  radius: 50,
                                  backgroundImage: AssetImage(
                                    ('assets/images/4.jpg'), //circleIcon[index]['img']
                                  ),
                                ),
                                Text(
                                  circleIcon[index]['name1'],
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Autres services',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Row(
                  children: List.generate(squareCard.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 20,
                        bottom: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            squareCard[index]['img'],
                            height: 100,
                            width: 160,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            squareCard[index]['name1'],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Les plus popularies',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Row(
                  children: List.generate(squareCard.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 20,
                        bottom: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            squareCard[index]['img'],
                            height: 200,
                            width: 260,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            squareCardLarge[index]['name2'],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            squareCardLarge[index]['rate'],
                            style: const TextStyle(
                              fontSize: 12,
                              // color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            squareCardLarge[index]['address'],
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Row(
                  children: List.generate(squareCard.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 20,
                        bottom: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            squareCard[4 - index]['img'],
                            height: 200,
                            width: 260,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            squareCardLarge[index]['name2'],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            squareCardLarge[index]['rate'],
                            style: const TextStyle(
                              fontSize: 12,
                              // color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            squareCardLarge[index]['address'],
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
