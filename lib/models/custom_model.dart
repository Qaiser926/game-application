import 'dart:ui';

import 'package:sports/utilites/constants.dart';

class CustomModel{
  String? title;
  Color? color;
  CustomModel({this.title,this.color});
}
//PickUp Screen
List<CustomModel> pickUpButtonList=[
  CustomModel(title: "My Teams",color: kbagroundColor),
  CustomModel(title: "Create a match",color: kAlertColor),
  CustomModel(title: "Find Matches",color: kAlertColor),
  CustomModel(title: "My Matches",color: kbagroundColor),
  CustomModel(title: "Find Referee",color: kbagroundColor),
  CustomModel(title: "Find Players",color: kAlertColor),
];

//OrganizedTournamentsScreen Screen
List<CustomModel> organizedTournamentsScreenButtonList=[
  CustomModel(title: "My Tournaments",color: kbagroundColor),
  CustomModel(title: "Find Tournament",color: kAlertColor),
  CustomModel(title: "Create\nTournaments",color: kAlertColor),
  CustomModel(title: "Find Players",color: kbagroundColor),
  CustomModel(title: "Find Referee",color: kbagroundColor),
  CustomModel(title: "My Teams",color: kAlertColor),
  CustomModel(title: "My Matches",color: kbagroundColor),
];