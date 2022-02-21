import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yoboresto/main.dart';
import 'package:yoboresto/redirectPages.dart';

class ChooseLocation extends StatefulWidget {
  ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Saved addresses';
    var items = ['+91', '+1', '+251'];
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        SingleChildScrollView(
          child: Container(
            height: devHeight,
            width: devWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.white.withOpacity(0),
          appBar: AppBar(
            backgroundColor: customWhite,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
            title: Text(
              'Choose location',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.my_location_outlined,
                        color: deepOrange,
                      ),
                    ),
                    Text(
                      'Use current location',
                      style: TextStyle(
                        color: deepOrange,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              Container(
                color: customWhite,
                height: 50,
                width: devWidth,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: null,
                          icon: Icon(Icons.search_outlined),
                        ),
                        Container(
                          height: 40,
                          width: devWidth - 100,
                          child: TextField(
                            // keyboardType: TextInputType.number,
                            onChanged: (value) {},
                            decoration: const InputDecoration(
                              hintText: 'Search for location',
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 10,
                                // horizontal: 20,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(0),
                                ),
                              ),
                              // enabledBorder: OutlineInputBorder(
                              //   // borderSide: BorderSide(
                              //   //   color: Color.fromARGB(255, 93, 93, 93),
                              //   //   width: 1,
                              //   // ),
                              //   borderRadius: BorderRadius.all(
                              //     Radius.circular(1),
                              //   ),
                              // ),
                              // focusedBorder: OutlineInputBorder(
                              //   // borderSide: BorderSide(
                              //   //   color: Color.fromARGB(255, 93, 93, 93),
                              //   //   width: 1,
                              //   // ),
                              //   borderRadius: BorderRadius.all(
                              //     Radius.circular(1),
                              //   ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: devWidth,
                color: customWhite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.bookmark,
                      color: deepOrange,
                    ),
                    DropdownButton(
                        underline: Container(
                          height: 0,
                          width: devWidth,
                          // color: Colors.grey,
                        ),
                        dropdownColor: customWhite,
                        // isExpanded: true,
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        }),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: Container(
            color: Colors.white.withOpacity(0),
            height: 76,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: RedirectPages(),
                          type: PageTransitionType.rightToLeft,
                        ),
                      );
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 14,
                        ),
                      ),
                      elevation: MaterialStateProperty.all(0),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                            color: deepOrange,
                          ),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(deepOrange),
                    ),
                    child: Text('Confirm Location (working)'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
