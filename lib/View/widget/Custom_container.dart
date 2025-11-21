import 'package:flutter/material.dart';
class CustomContainer extends StatelessWidget {
  double?width;
  double?height;
  Widget?widget;
  Color?color;
  BorderRadius? borderRadius;


  CustomContainer({super.key,
    this.width,
    this.height,
    this.widget,
    this.color,
    this.borderRadius

  });

  @override
  Widget build(BuildContext context) {
    return Container(

      width: width,
      height: height,

      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,

      ),

      child: widget!,


    );
  }
}
