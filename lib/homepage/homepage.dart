import 'package:flutter/material.dart';
import 'package:play_store_clone/components/standard_colors.dart';
import 'package:play_store_clone/homepage/components/card_haeding_ads.dart';
import 'package:play_store_clone/homepage/components/card_heading_two.dart';
import 'package:play_store_clone/homepage/components/card_heading_type1.dart';
import 'package:play_store_clone/homepage/components/home_card_one.dart';
import 'package:play_store_clone/homepage/components/home_card_three.dart';
import 'package:play_store_clone/homepage/components/home_card_two.dart';
import 'package:play_store_clone/homepage/components/top_card.dart';
import '../components/json.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            children: const [
              TopCardFirst(),
              CardHeadingOne(text: "Casual Games"),
              HomeCardOne(),
              CardHeadingTwo(text: "Editor's Choice games"),
              HomeCardOne(),
              CardHeadingAds(text: "Seggested for you"),
              HomeCardTwo(),
              TopCardFirst(),
              CardHeadingOne(text: "Limited offer for you"),
              HomeCardThree(),

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
            ],
          ),
        ),
      ),
    );
  }
}
