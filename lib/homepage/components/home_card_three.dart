import 'package:flutter/material.dart';
import 'package:play_store_clone/components/json.dart';
import 'package:play_store_clone/components/standard_colors.dart';

class HomeCardThree extends StatelessWidget {
  const HomeCardThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double devHeight = MediaQuery.of(context).size.height;
    final double devWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        top: 25,
        bottom: 20,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: UsedColors.myWhite,
          // boxShadow: [
          //   BoxShadow(
          //     color: myBlack,
          //     blurRadius: 1,
          //     spreadRadius: 1.5,
          //     blurStyle: BlurStyle.outer,
          //   ),
          // ],
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          border: Border.all(
            color: UsedColors.myGrey,
            width: 1.5,
            style: BorderStyle.solid,
          ),
        ),
        height: 320,
        width: devWidth - 60,
        child: Column(
          children: [
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
                          color: UsedColors.myGrey,
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
                          color: UsedColors.myGrey,
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
                      color: UsedColors.myGrey,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(0, 255, 255, 255)),
                    ),
                    onPressed: null,
                    child: Text(
                      'Save offer',
                      style: TextStyle(
                        color: UsedColors.myGreen,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
