import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class recomendedPlants extends StatelessWidget {
  const recomendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          plantCard(
            image: 'assets/images/image_1.png',
            country: "russia",
            price: 440,
            press: () {},
            title: "Samantha",
          ),
          plantCard(
            image: 'assets/images/image_2.png',
            country: "russia",
            price: 440,
            press: () {},
            title: "Good One",
          ),
          plantCard(
            image: 'assets/images/image_3.png',
            country: "russia",
            price: 440,
            press: () {},
            title: "Angelica",
          ),
          plantCard(
            image: 'assets/images/image_1.png',
            country: "russia",
            price: 440,
            press: () {},
            title: "Ah ah Plant",
          ),
        ],
      ),
    );
  }
}

class plantCard extends StatelessWidget {
  const plantCard({
    Key? key,
    this.price,
    this.press,
    this.title,
    this.image,
    this.country,
  }) : super(key: key);

  final int? price;
  final VoidCallback? press;
  final String? title, image, country;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image!),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
