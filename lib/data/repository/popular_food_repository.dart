import 'package:ecom/data/api/api_client.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getProductPopularList() async {
    // return await apiClient.getData("end point url");
    return await apiClient.getData("/api/product/list");
  }
}
