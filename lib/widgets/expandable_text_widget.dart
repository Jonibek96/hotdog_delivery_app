import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotdog_delivery_app/utils/dimensions.dart';
import 'package:hotdog_delivery_app/widgets/small_text.dart';

import '../utils/app-colors.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;

  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  _ExpandableTextWidgetState createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight/5.63;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.text.length>textHeight){
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()+1, widget.text.length);
    }else{
      firstHalf = widget.text;
      secondHalf = "";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(
          text: firstHalf,
          size: Dimensions.font16,
      ):Column(
        children: [
          SmallText(
              height: 1.6 ,
              color: AppColors.paraColor,
              text: hiddenText?(firstHalf+"..."):(firstHalf+secondHalf),
              size: Dimensions.font16,
          ),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText = !hiddenText;
              });
            },
            child: Row(
              children: [
                SmallText(text: hiddenText?"Show more":"Hide more", color: AppColors.mainColor,),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up, color: AppColors.mainColor,)
              ],
            ),
          )
        ],
      ),
    );
  }
}

