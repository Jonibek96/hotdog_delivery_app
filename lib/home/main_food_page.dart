import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotdog_delivery_app/home/food_page_body.dart';
import 'package:hotdog_delivery_app/widgets/big_text.dart';

import '../utils/app-colors.dart';
import '../utils/dimensions.dart';
import '../widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f2f2),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: Dimensions.height60, bottom: Dimensions.height15),
            padding: EdgeInsets.only(left: Dimensions.width30, right: Dimensions.width30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(text: "Tajikistan", color: AppColors.mainColor,),
                    Row(
                      children: [
                        SmallText(text: "Dushanbe", color: Colors.black54,),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ],
                ),
                Center(
                  child: Container(
                    width: Dimensions.height45,
                    height: Dimensions.height45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: AppColors.mainColor,
                    ),
                    child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconSize24,),
                  ),
                )
              ],
            ),
          ),
           Expanded(
              child:SingleChildScrollView(
                  child: FoodPageBody()
              )
          )
        ],
      ),
    );
  }
}
