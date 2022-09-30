import 'package:flutter/material.dart';
import 'package:play_store_clone/components/json.dart';

class HomeCardTwo extends StatelessWidget {
  const HomeCardTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double devWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
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
                            image: AssetImage("images/more/coc_cover.jpg"),
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
                                  image: AssetImage("images/icons/coc.png"),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 3),
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
                                const SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      homeOneCards2[index]['rating'],
                                      style: const TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 7.0),
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
    );
  }
}