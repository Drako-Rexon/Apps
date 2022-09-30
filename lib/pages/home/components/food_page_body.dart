import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecom/components/big_text.dart';
import 'package:ecom/components/colors.dart';
import 'package:ecom/components/dimensions.dart';
import 'package:ecom/components/small_text.dart';
import 'icon_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'small_card_stack.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.90);
  var _pageCurrvalue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    pageController.addListener(() {
      setState(() {
        _pageCurrvalue = pageController.page!;
        // * print("The current value is: " + _pageCurrvalue.toString());
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // slider here
        Container(
          height: Dimensions.pageView,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _pageItem(position);
            },
          ),
        ),
        // Dots here
        new DotsIndicator(
          dotsCount: 5,
          position: _pageCurrvalue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9),
            activeSize: const Size(18, 9),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        // popular text
        SizedBox(
          height: Dimensions.height30,
        ),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigTextwidget(text: "Popular"),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigTextwidget(
                  text: ".",
                  color: Colors.black26,
                ),
              ),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                child: SmallTextWidget(text: "Food pairing"),
              ),
            ],
          ),
        ),
        // List of foods and images
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                bottom: Dimensions.height10,
              ),
              child: Row(
                children: [
                  // image section
                  Container(
                    height: Dimensions.listViewImgSize,
                    width: Dimensions.listViewImgSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.redAccent,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/food0.jpg'),
                      ),
                    ),
                  ),
                  // Text section
                  Expanded(
                    child: Container(
                      height: Dimensions.listViewTextContSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimensions.radius20),
                          bottomRight: Radius.circular(Dimensions.radius20),
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: Dimensions.width10,
                          right: Dimensions.width10,
                          top: Dimensions.height20,
                          bottom: Dimensions.height20,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigTextwidget(
                                text: "Nutritious fruit meal in China"),
                            SmallTextWidget(
                                text: "With chinese characteristics"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconAndTextWidget(
                                  sizeOfIcon: 16,
                                  color: AppColors.textColor,
                                  title: 'Normal',
                                  iconColor: AppColors.iconColor1,
                                  icon: Icons.circle,
                                ),
                                IconAndTextWidget(
                                  sizeOfIcon: 16,
                                  color: AppColors.textColor,
                                  title: '1.7 km',
                                  iconColor: AppColors.mainColor,
                                  icon: Icons.location_on,
                                ),
                                IconAndTextWidget(
                                  sizeOfIcon: 16,
                                  color: AppColors.textColor,
                                  title: '32 min',
                                  iconColor: AppColors.iconColor2,
                                  icon: FeatherIcons.clock,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _pageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();

    if (index == _pageCurrvalue.floor()) {
      var currentScale = 1 - (_pageCurrvalue - index) * (1 - _scaleFactor);
      var _currentTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, _currentTrans, 0);
    } else if (index == _pageCurrvalue.floor() + 1) {
      var currentScale =
          _scaleFactor + (_pageCurrvalue - index + 1) * (1 - _scaleFactor);
      var _currentTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, _currentTrans, 0);
    } else if (index == _pageCurrvalue.floor() - 1) {
      var currentScale = 1 - (_pageCurrvalue - index) * (1 - _scaleFactor);
      var _currentTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, _currentTrans, 0);
    } else {
      var currentScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.symmetric(horizontal: Dimensions.width10),
            decoration: BoxDecoration(
              color: index.isEven ? Colors.green : Colors.blue,
              borderRadius:
                  BorderRadius.all(Radius.circular(Dimensions.radius30)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/food${index}.jpg'),
              ),
            ),
          ),
          SmallCardStack(),
        ],
      ),
    );
  }
}
