import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
   CustomText({
     this.title,
     this.color,
     this.fontSize,
     this.fontWeight,
     this.fontStyle,
     this.textAlign,
     this.decoration,
     this.maxLines,
     Key? key}) : super(key: key);
  String? title;
  Color? color;
  double? fontSize;
  FontWeight? fontWeight;
  FontStyle? fontStyle;
  TextAlign? textAlign;
  TextDecoration? decoration;
  int ? maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(title??"",
    textAlign: textAlign?? TextAlign.left,
    maxLines: maxLines,
    style: TextStyle(
      fontSize:fontSize,
      color: color,
      fontWeight: fontWeight,
      decoration: decoration,
      fontStyle: fontStyle
    ),);
  }
}
