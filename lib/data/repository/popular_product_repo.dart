import 'package:get/get.dart';
import 'package:hotdog_delivery_app/data/api/api_client.dart';
import 'package:hotdog_delivery_app/utils/app_contstant.dart';

class PopularProductRepo extends GetxService{
  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async{
      return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URL);
  }
}