import 'package:flutter/material.dart';
import 'package:sports/models/custom_model.dart';
import 'package:sports/utilites/constants.dart';
import 'package:sports/utilites/helper.dart';
import 'package:sports/widgets/custom_button.dart';
import 'package:sports/widgets/custom_parent_widget.dart';
class PickUpScreen extends StatelessWidget {
  const PickUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomParentWidget(
      child: Scaffold(
        body: Container(
          height: Helper.setHeight(context),
          width: Helper.setWidth(context),
          decoration:   BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  kbagroundColor,
                  kWhiteColor.withOpacity(0.2),
                ],
              )
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Space
                SizedBox(height: 60,),
                //logo
                Image.asset("assets/icons/logo.png",scale: 6,),
                //Space
                SizedBox(height: 20,),
                //title
                Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: const Text("Pick up Games",
                    style: kTitleTextstyle,
                  ),
                ),
                //Space
                SizedBox(height: 15,),
                //subTitle
                Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  alignment: Alignment.center,
                  child: const Text("Play a quick match with players nearby",
                    textAlign: TextAlign.center,
                    style: kSubTextStyle,
                  ),
                ),
                //Space
                SizedBox(height: 80,),
               //
                Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  width: double.infinity,
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.spaceBetween,
                    runAlignment: WrapAlignment.spaceBetween,
                    runSpacing: 14,
                    children: List.generate(pickUpButtonList.length, (index){
                      return   CustomButton(
                        onPressed: (){},
                        btnHeight: 48,
                        btnWidth: MediaQuery.of(context).size.width*0.4,
                        btnRadius: 14,
                        title: pickUpButtonList[index].title,
                        btnColor: pickUpButtonList[index].color,
                        textColor: kWhiteColor,
                        fontSize: 13,
                      );
                    })
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
