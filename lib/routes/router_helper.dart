import 'package:get/get.dart';
import 'package:hotdog_delivery_app/home/main_food_page.dart';
import 'package:hotdog_delivery_app/pages/food/popular_food_details.dart';
import 'package:hotdog_delivery_app/pages/food/recomended_food_details.dart';

class RouterHelper{
  static const String initial="/";
  static const String popularFood="/popular-food";
  static const String recommendedFood="/recommended-food";

  static String getInitial() => '$initial';
  static String getPopularFood() => '$popularFood';
  static String getRecommendedFood() => '$recommendedFood';

  static List<GetPage> routes = [
    GetPage(name: initial, page: (){
      return MainFoodPage();
    },
      transition: Transition.fadeIn
    ),
    GetPage(name: popularFood, page: () {
      return PopularFoodDetails();
    },
      transition: Transition.fadeIn
    ),
    GetPage(name: recommendedFood, page: () {
      return RecomendedFoodDetails();
    },
        transition: Transition.fadeIn
    ),
  ];
}