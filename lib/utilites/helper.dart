import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:sports/animation/slideright_toleft.dart';
import 'constants.dart';

class Helper {
  static setHeight(BuildContext context, {height: 1}) {
    return MediaQuery.of(context).size.height * height;
  }

  static setWidth(BuildContext context, {width: 1}) {
    return MediaQuery.of(context).size.width * width;
  }

  static toScreen(context, screen) {
    Navigator.push(context, SlideRightToLeft(page: screen));
  }

}
