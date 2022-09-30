import 'package:ecom/components/dimensions.dart';
import 'package:flutter/material.dart';

// * this is self made idget which will use in the whole app as we need
class BigTextwidget extends StatelessWidget {
  BigTextwidget({
    Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 0,
    this.overFlow = TextOverflow.ellipsis,
  }) : super(key: key);

  // * This is not required field because in default case we will get black  color text

  // * ths is required field because we need text to use

  // * There is use of ellipsis which means the text more than space wil convert into 3 dots

  // * Here we have set the default size of the text

  Color color;
  final double size;
  final String text;
  TextOverflow overFlow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
        fontSize: size == 0 ? Dimensions.font20 : size,
      ),
    );
  }
}
