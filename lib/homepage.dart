import 'package:flutter/material.dart';
import 'package:yoboresto/main.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getHomeBody(),
    );
  }

  Widget getHomeBody() {
    var devWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.search,
                  color: deepOrange,
                ),
              ),
              Container(
                width: devWidth - 100,
                color: customWhite,
                child: TextField(),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    4,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: lightGrey,
                            ),
                            Text(
                              'Restaurants',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    3,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: lightGrey,
                            ),
                            Text(
                              'Restaurants',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: devWidth - 40,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Colors.red,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 34, left: 24),
              child: Text(
                'Taste food like you\nnever had before',
                maxLines: 2,
                style: TextStyle(
                  color: customWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Text(
                  'Best Restraunts',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: List.generate(
                  4,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Material(
                        elevation: 4,
                        child: Container(
                          height: 180,
                          width: devWidth - 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: customWhite,
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/2.png',
                                    ),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                height: 90,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'name',
                                        maxLines: 1,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'address',
                                        maxLines: 1,
                                        style: TextStyle(
                                          color: Colors.grey[400],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.timelapse_outlined,
                                            size: 12,
                                          ),
                                          Text(
                                            'time | ',
                                            style: TextStyle(
                                              fontSize: 11,
                                            ),
                                          ),
                                          Text(
                                            'distence',
                                            style: TextStyle(
                                              fontSize: 11,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Text(
                  'Best Deals',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: List.generate(
                  4,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Material(
                        elevation: 4,
                        child: Container(
                          height: 180,
                          width: devWidth - 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: customWhite,
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/2.png',
                                    ),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                height: 90,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'name',
                                        maxLines: 1,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'address',
                                        maxLines: 1,
                                        style: TextStyle(
                                          color: Colors.grey[400],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.timelapse_outlined,
                                            size: 12,
                                          ),
                                          Text(
                                            'time | ',
                                            style: TextStyle(
                                              fontSize: 11,
                                            ),
                                          ),
                                          Text(
                                            'distence',
                                            style: TextStyle(
                                              fontSize: 11,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Text(
                  'Best Deals',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: List.generate(
                  4,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Material(
                        elevation: 4,
                        child: Container(
                          height: 180,
                          width: devWidth - 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: customWhite,
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/2.png',
                                    ),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                height: 90,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'name',
                                        maxLines: 1,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'address',
                                        maxLines: 1,
                                        style: TextStyle(
                                          color: Colors.grey[400],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.timelapse_outlined,
                                            size: 12,
                                          ),
                                          Text(
                                            'time | ',
                                            style: TextStyle(
                                              fontSize: 11,
                                            ),
                                          ),
                                          Text(
                                            'distence',
                                            style: TextStyle(
                                              fontSize: 11,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Text(
                  'Best deals on Yoboresto',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: List.generate(5, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        color: lightGrey,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Text(
                  'Best Deals',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: List.generate(5, (index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Material(
                  elevation: 4,
                  child: Container(
                    height: 260,
                    width: devWidth - 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: customWhite,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 168,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/2.png',
                              ),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          height: 90,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'name',
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'address',
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.timelapse_outlined,
                                      size: 12,
                                    ),
                                    Text(
                                      'time | ',
                                      style: TextStyle(
                                        fontSize: 11,
                                      ),
                                    ),
                                    Text(
                                      'distence',
                                      style: TextStyle(
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
