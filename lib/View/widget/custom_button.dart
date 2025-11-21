import 'package:delivery/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomButton extends StatelessWidget {
  String? text;
  double?width;
  double?height;
  Color?textcolor;
  FontWeight?textfontweight;
  Color?color;
  void Function()? ontap;
  BoxBorder? border;
  BorderRadiusGeometry? borderRadius;

  CustomButton({super.key,this.text,this.borderRadius,this.border,this.color,this.textcolor,this.ontap,this.width,this.height,this.textfontweight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap ,
      child: Container(
        width: width,
        height: height,
        child: Center(child: Text("${text}",style: TextStyle(color: textcolor,fontSize: 15.sp,fontWeight:textfontweight ),)),

        decoration: BoxDecoration(

            color: color,
            borderRadius: borderRadius,
          border: border,


        ),


      ),
    );
  }
}
