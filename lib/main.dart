import 'package:ecom/controller/popular_product_controller.dart';
import 'package:ecom/pages/home/components/food_page_body.dart';
import 'package:ecom/pages/recommend/recommend_food_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as depend;

void main() async {
  // TODO: this need to be done for the full screen view, maybe this is not working for the old model of emulator

  // SystemChrome.setEnabledSystemUIMode(
  //   SystemUiMode.immersiveSticky,
  // );
  WidgetsFlutterBinding.ensureInitialized();
  await depend.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getProduxtPopularList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FoodPageBody(),
    );
  }
}
