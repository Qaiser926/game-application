import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF50B6BB);
const kSecondaryColor = Color(0xFF45969B);
const kTertiaryColor = Color(0xFF08C5DA);
const kTextColor = Color(0xFF45969B);
// const kTextColor = Color(0xFF006AEF);
const kBackgroundColor = Color(0xFFFFFFFF);
const kScaffoldBackgroundColor = Color(0xFFFFFFFF);
const kActionColor = Color(0xFFACE6FF);
const kAmberColor = Color(0xFFFF8748);
const kAlertColor = Color(0xFFFF4848);
const kGreenColor = Color(0xFF36C12C);
const kShadowColor = Color(0xFFC9FFFD);
const kWhiteColor = Color(0xFFFFFFFF);
const kBlackColor = Color(0xFF000000);
const kbagroundColor =  Color(0xFF09C6F9);
const kContainerColor = Color(0xffEDEDED);
const kContainer2Color = Color(0xffC4C4C4);
// Text Style
const kHeadingTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

const kBoardingTextStyle = TextStyle(
  fontSize: 20,
  // color: kSecondaryColor,
  fontWeight: FontWeight.w700,
);


const kAlertTextStyle = TextStyle(fontSize: 12);

const kTitleTextstyle = TextStyle(
  fontSize: 24,
  color: kBlackColor,
  fontWeight: FontWeight.w700,
);
const kSubTextStyle =
TextStyle(fontSize: 14,
    color: kBlackColor
);
const kContentTextstyle = TextStyle(
  fontSize: 14,
  color: kTextColor,
  fontWeight: FontWeight.w600,
);

const kFormTextStyle = TextStyle(
  fontSize: 13,
  color: kTextColor,
  fontWeight: FontWeight.w600,
);

const kregularTextstyle = TextStyle(
  fontSize: 14,
  color: Colors.black54,
  fontWeight: FontWeight.w400,
  height: 2.0,
);

const kExtrasmallTextstyle = TextStyle(
  fontSize: 8,
  color: Colors.black54,
  fontWeight: FontWeight.w400,
);

const kAppBarstyle = TextStyle(
  fontSize: 16,
  // color: kBackgroundColor,
  fontWeight: FontWeight.bold,
);

const double kDefaultPadding = 20.0;

const kGradient = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    kPrimaryColor,
    kSecondaryColor,
  ],
);

const kExtra2Textstyle = TextStyle(
  fontSize: 12,
  color: kPrimaryColor,
  fontWeight: FontWeight.w400,
);

extension CustomString on String {
  String capitalizeFirst() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
