import 'package:ecom/data/repository/popular_food_repository.dart';
import 'package:ecom/model/pop_products_model.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxService {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get ppopularProductList => _popularProductList;

  Future<void> getProduxtPopularList() async {
    Response response = await popularProductRepo.getProductPopularList();
    if (response.statusCode == 200) {
      print("Producy got");
      _popularProductList = [];
      _popularProductList.addAll(Popular.fromJson(response.body).products);
      print(_popularProductList);
      // update();
    } else {}
  }
}
// 