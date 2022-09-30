import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.6;
  static double pageViewContainer = screenHeight / 3.5;
  static double pageViewTextContainer = screenHeight / 5.9;
  // Dynamic heights - padding and margin
  static double height10 = screenHeight / 84;
  static double height15 = screenHeight / 56;
  static double height20 = screenHeight / 42;
  static double height30 = screenHeight / 28;
  static double height45 = screenHeight / 17;

  // Dynamic width - padding and margin
  static double width10 = screenHeight / 84;
  static double width15 = screenHeight / 56;
  static double width20 = screenHeight / 42;
  static double width30 = screenHeight / 28;

  // Font sizes
  static double font16 = screenHeight / 52.7;
  static double font20 = screenHeight / 42;
  static double font26 = screenHeight / 32.4;

  // Radius
  static double radius10 = screenHeight / 84;
  static double radius20 = screenHeight / 42;
  static double radius30 = screenHeight / 28;

  static double iconSize24 = screenHeight / 35;
  static double iconSize16 = screenHeight / 52.7;

  // list view size
  static double listViewImgSize = screenWidth / 3.2;
  static double listViewTextContSize = screenWidth / 3.7;

  // Popular page variables for responsiveness

  static double popularFoodImgSize = screenHeight / 2.4;

  //bottom height
  static double bottomBarHeight = screenHeight / 7;
}
