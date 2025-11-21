import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  String? text;
  Color? textcolor;
  FontWeight? fontWeight;
  double? fontsize;
  TextAlign?textAlign;
  int? maxline;


  CustomText({super.key,
    this.text,
    this.textcolor,
    this.fontWeight,
    this.fontsize,
    this.textAlign,
    this.maxline
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "${text}",
      textAlign: textAlign,
      maxLines:maxline ,
      style: TextStyle(
        color: textcolor,
        fontWeight: fontWeight,
        fontSize: fontsize
      ),

    );
  }
}
