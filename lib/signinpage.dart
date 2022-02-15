import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double devHeight = MediaQuery.of(context).size.height;
    // double devWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Container(
        child: Column(
          children: [
            Row(
              children: const <Widget>[
                Text(
                  'Explore the app',
                  style: TextStyle(
                    color: Color(0xFFE46829),
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                height: 250,
                width: 250,
                decoration: const BoxDecoration(
                    // boxShadow:
                    // image: DecorationImage(
                    // image: AssetImage(/*'assets/images/'*/),
                    // fit: BoxFit.cover,
                    // ),
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
