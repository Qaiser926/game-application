import 'package:flutter/material.dart';
class CustomInkWell extends StatelessWidget {
   CustomInkWell({
    this.onTap,
     this.child,
    Key? key}) : super(key: key);
  Function? onTap;
  Widget? child;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        FocusScope.of(context).requestFocus(FocusNode());
        onTap!();
      },
      child: child,
    );
  }
}
