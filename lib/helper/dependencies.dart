import 'package:get/get.dart';
import 'package:hotdog_delivery_app/data/api/api_client.dart';
import 'package:hotdog_delivery_app/data/controller/popular_product_controller.dart';
import 'package:hotdog_delivery_app/data/repository/popular_product_repo.dart';
import 'package:hotdog_delivery_app/utils/app_contstant.dart';

Future<void> init()async {
  // api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  // repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  // controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find(),));

}