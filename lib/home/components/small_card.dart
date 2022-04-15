import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:salon/components/json_used.dart';
import 'package:http/http.dart' as http;

class SmallCard extends StatefulWidget {
  const SmallCard({
    Key? key,
  }) : super(key: key);

  @override
  State<SmallCard> createState() => _SmallCardState();
}

class _SmallCardState extends State<SmallCard> {
  Map? responseMap;
  // = {"test": "passed"};
  Future apiCallHttp() async {
    http.Response httpResponse =
        await http.get(Uri.parse('https://anaajapp.com/api/categories'));
    if (httpResponse.statusCode == 200) {
      setState(() {
        responseMap = json.decode(httpResponse.body);
      });
    } else {
      print(httpResponse.statusCode);
    }
    if (responseMap == null) {
      return;
    }
  }

  @override
  void initState() {
    apiCallHttp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Row(
        children: List.generate(smallCardData.length, (index2) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 4),
            margin: EdgeInsets.only(right: 8, left: 7),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: smallCardData[index2]['color'],
              borderRadius: BorderRadius.all(Radius.circular(13)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  responseMap!['data'][index2]["icon"].toString(),
                  scale: 2,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(responseMap == null?'Teh text is loading':
                  responseMap!['data'][index2]["name"]["EN"].toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontFamily: 'PoppinsMed',
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
