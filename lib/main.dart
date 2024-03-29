import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotdog_delivery_app/data/controller/popular_product_controller.dart';
import 'package:hotdog_delivery_app/home/main_food_page.dart';
import 'package:hotdog_delivery_app/pages/food/popular_food_details.dart';
import 'package:hotdog_delivery_app/pages/food/recomended_food_details.dart';
import 'package:hotdog_delivery_app/routes/router_helper.dart';
import 'helper/dependencies.dart' as dep;
Future<void> main() async {
  dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainFoodPage(),
      //initialRoute: RouterHelper.initial,
      getPages: RouterHelper.routes,
    );
  }
}

