import 'package:delivery/Utils/app_colors.dart';
import 'package:delivery/Utils/app_images.dart';
import 'package:delivery/View/widget/Custom_Text.dart';
import 'package:delivery/View/widget/Custom_Textfield.dart';
import 'package:delivery/View/widget/Custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [

          // appbar
          CustomContainer(
            height: 50.h,
            width: double.maxFinite.w,
            widget: Row(
              children: [

                Container(
                  width: 300.w,
                  height: 60.h,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.r,left: 10.r),
                    child: Row(
                      children: [
                        Container(


                          child: Image.asset(AppImages.man),

                        ),

                        SizedBox(width: 10.r,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: "Hi, Sazzad",fontWeight: FontWeight.bold,textcolor: Colors.black,fontsize: 18.sp,maxline: 1,),

                            Row(children: [

                              Image.asset(AppImages.luca),

                              SizedBox(width: 3.w,),

                              CustomText(textcolor: AppColors.graym,text: "Riyadh ,Saudi Arabia",fontsize: 13.sp,),

                              Image.asset(AppImages.frame_button

                              ),




                            ],)

                          ],
                        )


                      ],

                    ),
                  ),


                ),

                Container(
                  width: 50.w,
                  height: 50.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Image.asset(AppImages.notification)
                    ],

                  ),
                )




              ],


            ),

          ),

          SizedBox(height: 10.h,),
          
          Padding(
            padding: EdgeInsets.only(left: 20.r,right: 20.r),
            child: Container(
              width: double.maxFinite.w,
              height: 100.h,

              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(15.r)


              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(text: "Track your Parcel",fontWeight:FontWeight.bold,fontsize: 20.sp,textcolor: Colors.white,maxline: 1,textAlign: TextAlign.center,),

                  SizedBox(height: 5.h,),

                  CustomText(text: "Please enter your order ind",textcolor: Colors.white,fontsize: 15,textAlign: TextAlign.center,),

                  SizedBox(height: 5.h,),

                  CustomTextField(hintText: "Order id",)
                ],

              ),

            ),
          )
          


        ],

      ),

    );
  }
}
