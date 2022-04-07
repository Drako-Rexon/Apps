import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class navForDetailsPage extends StatelessWidget {
  const navForDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          height: 80,
          width: size.width / 2,
          child: FlatButton(
            onPressed: () {},
            color: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
            ),
            child: Text(
              'Buy Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {},
            child: Text('Description'),
          ),
        ),
      ],
    );
  }
}
