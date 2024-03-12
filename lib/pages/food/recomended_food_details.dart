//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotdog_delivery_app/utils/app-colors.dart';
import 'package:hotdog_delivery_app/utils/dimensions.dart';
import 'package:hotdog_delivery_app/widgets/app-icon.dart';
import 'package:hotdog_delivery_app/widgets/big_text.dart';
import 'package:hotdog_delivery_app/widgets/expandable_text_widget.dart';

import '../../routes/router_helper.dart';

class RecomendedFoodDetails extends StatelessWidget {
  const RecomendedFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: (){
                      Get.toNamed(RouterHelper.getInitial());
                    },
                    child: AppIcon(icon: Icons.clear)
                ),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  //margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20),
                      )),
                  child: Center(
                      child: BigText(
                    text: "Chinese side",
                    size: Dimensions.font26,
                  ))),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/food2.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: ExpandableTextWidget(
                    text:
                        "Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions (cheeky easy sub bellow!), fresh coriander/cilantro, then par boiled Chicken marinated in a spiced yoghurt is placed in a large pot,  then layered with fried onions (cheeky easy sub bellow!), fresh coriander cilantro, then par boiled then layered with fried onions (cheeky easy sub bellow!), fresh coriander cilantro, then par boiled boiled then layered with fried onions (cheeky easy sub bellow!), fresh coriander cilantro, then par boiled Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions (cheeky easy sub bellow!), fresh coriander/cilantro, then par boiled Chicken marinated in a spiced yoghurt is placed in a large pot,  then layered with fried onions (cheeky easy sub bellow!), fresh coriander cilantro, then par boiled then layered with fried onions (cheeky easy sub bellow!), fresh coriander cilantro, then par boiled boiled then layered with fried onions (cheeky easy sub bellow!), fresh coriander cilantro, then par boiled Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions (cheeky easy sub bellow!), fresh coriander/cilantro, then par boiled Chicken marinated in a spiced yoghurt is placed in a large pot,  then layered with fried onions (cheeky easy sub bellow!), fresh coriander cilantro, then par boiled then layered with fried onions (cheeky easy sub bellow!), fresh coriander cilantro, then par boiled boiled then layered with fried onions (cheeky easy sub bellow!), fresh coriander cilantro, then par boiled Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions (cheeky easy sub bellow!), fresh coriander/cilantro, then par boiled Chicken marinated in a spiced yoghurt is placed in a large pot,  then layered with fried onions (cheeky easy sub bellow!), fresh coriander cilantro, then par boiled then layered with fried onions (cheeky easy sub bellow!), fresh coriander cilantro, then par boiled boiled then layered with fried onions (cheeky easy sub bellow!), fresh coriander cilantro, then par boiled Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions (cheeky easy sub bellow!), fresh coriander/cilantro, then par boiled Chicken marinated in a spiced yoghurt is placed in a large pot,  then layered with fried onions (cheeky easy sub bellow!), fresh coriander cilantro, then par boiled then layered with fried onions (cheeky easy sub bellow!), fresh coriander cilantro, then par boiled boiled then layered with fried onions (cheeky easy sub bellow!), fresh coriander cilantro, then par boiled Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions (cheeky easy sub bellow!), fresh coriander/cilantro, then par boiled Chicken marinated in a spiced yoghurt is placed in a large pot,  then layered with fried onions (cheeky easy sub bellow!), fresh coriander cilantro, then par boiled then layered with fried onions (cheeky easy sub bellow!), fresh coriander cilantro, then par boiled boiled then layered with fried onions (cheeky easy sub bellow!), fresh coriander cilantro, then par boiled "),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height20,
              bottom: Dimensions.height20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.iconSize24,
                ),
                BigText(text: "\$12.88 " + "X " + "0", color: AppColors.mainBlackColor, size: Dimensions.font26,),
                AppIcon(
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.iconSize24,

                ),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20
            ),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20*2),
                  topLeft: Radius.circular(Dimensions.radius20*2),
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 70,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white
                  ),
                  child: AppIcon(
                    icon: Icons.favorite,
                    iconColor: AppColors.mainColor,
                    backgroundColor: Colors.white,
                    iconSize: 30,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    right: Dimensions.width20,
                    left: Dimensions.width20,
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor
                  ),
                  child: BigText(text: "\$0.08 | Add to cart", color: Colors.white,),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
