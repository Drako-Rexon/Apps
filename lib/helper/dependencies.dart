import 'package:ecom/controller/popular_product_controller.dart';
import 'package:ecom/data/api/api_client.dart';
import 'package:ecom/data/repository/popular_food_repository.dart';
import 'package:get/get.dart';

Future init() async {
  // Api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://mvs.bslmeiyu.com"));

  // repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  // controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
