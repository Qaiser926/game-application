import 'package:flutter/material.dart';
import 'package:sports/matcheResult.dart';
import 'package:sports/utilites/constants.dart';
import 'package:sports/utilites/helper.dart';
import 'package:sports/widgets/custom_box.dart';
import 'package:sports/widgets/custom_button.dart';
import 'package:sports/widgets/custom_parent_widget.dart';
import 'package:sports/widgets/custom_text.dart';

import 'organized_tournaments_screen.dart';
import 'pickup_screen.dart';

class SportsMainScreen extends StatelessWidget {
  const SportsMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomParentWidget(
      child: Scaffold(
        body: Container(
          height: Helper.setHeight(context),
          width: Helper.setWidth(context),
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              kbagroundColor,
              kWhiteColor.withOpacity(0.6),
            ],
          )),
          child: Column(
            children: [
              //Space
              SizedBox(
                height: 60,
              ),
              //logo
              Image.asset(
                "assets/icons/logo.png",
                scale: 6,
              ),
              //Space
              SizedBox(
                height: 20,
              ),
              //title
              Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: const Text(
                  "Welcome to Sports RS",
                  style: kTitleTextstyle,
                ),
              ),
              //Space
              SizedBox(
                height: 15,
              ),
              //subTitle
              Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                alignment: Alignment.center,
                child: const Text(
                  "Connect with nearby sports players,\n"
                  "find your team and play sports.",
                  textAlign: TextAlign.center,
                  style: kSubTextStyle,
                ),
              ),

              Expanded(
                  child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding, vertical: 60),
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    //Pick Up
                    Expanded(
                      child: CustomBox(
                        btnText: "Pick Up",
                        onPressed: () {
                          Helper.toScreen(context, PickUpScreen());
                        },
                        subTitle: "Play a quick match\n"
                            "with players nearby",
                      ),
                    ),
                    //Space
                    SizedBox(
                      width: 20,
                    ),
                    //Organ
                    Expanded(
                      child: CustomBox(
                        btnText: "Organize a\n"
                            "Tournament",
                        onPressed: () {
                          Helper.toScreen(
                              context, OrganizedTournamentsScreen());
                        },
                        subTitle: "Play in or organize a\ntournament",
                      ),
                    ),
                  ],
                ),
              )),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MatchResult()));
                  },
                  child: Text('matches')),
            ],
          ),
        ),
      ),
    );
  }
}
