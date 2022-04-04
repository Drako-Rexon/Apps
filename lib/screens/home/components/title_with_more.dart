import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class titleWithMore extends StatelessWidget {
  const titleWithMore({
    Key? key,
    this.press,
    this.title,
  }) : super(key: key);

  final String? title;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween, //! it is also useful but according to tutorial we also can us spacer()
        children: [
          titleWithCustomLine(text: title),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            onPressed: press,
            child: Text(
              'More',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}

class titleWithCustomLine extends StatelessWidget {
  const titleWithCustomLine({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: kDefaultPadding / 4),
      height: 24,
      child: Stack(
        children: [
          Text(
            text!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
