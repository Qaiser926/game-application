import 'package:flutter/material.dart';
import 'package:sports/utilites/constants.dart';

import 'custom_button.dart';
import 'custom_text.dart';
class CustomBox extends StatelessWidget {
   CustomBox({
   this.btnText,
   this.onPressed,
   this.subTitle,
   Key? key}) : super(key: key);
   String? btnText;
   Function? onPressed;
   String? subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
          color:  kbagroundColor.withOpacity(0.9),
          borderRadius: BorderRadius.all(Radius.circular(14)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]
      ),
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
      child: Column(
        children: [
          //
          Card(
            elevation: 2,
            margin: EdgeInsets.zero,
            color: kAlertColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: CustomButton(
              onPressed: onPressed,
              btnHeight: 48,
              btnRadius: 14,
              title: btnText,
              btnColor: kAlertColor,
              textColor: kWhiteColor,
              fontSize: 13,
            ),
          ),
          //Space
          const SizedBox(height: 30,),
          //
          CustomText(
            title: subTitle,
            textAlign: TextAlign.center,
            fontSize: 12,
            color: kWhiteColor,
          )
        ],
      ),
    );
  }
}
