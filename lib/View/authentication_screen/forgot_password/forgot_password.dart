import 'package:delivery/Utils/app_colors.dart';
import 'package:delivery/Utils/app_images.dart';
import 'package:delivery/View/widget/Custom_Text.dart';
import 'package:delivery/View/widget/Custom_Textfield.dart';
import 'package:delivery/View/widget/custom_button.dart';
import 'package:delivery/core/app_route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            
            GestureDetector(
              onTap: (){Get.toNamed(AppRoute.welcomePage);},
              child: SizedBox(
                  width: 50.w,
                  height: 50.h,
                  child: Image.asset(AppImages.frame)),
            )
            
          ],),


          Padding(
            padding: EdgeInsets.only(left: 15.r,right: 15.r),
            child: Container(
              width: double.maxFinite.w,
              height: 600.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  CustomText(text: "Forgot Password",textAlign: TextAlign.center,textcolor: Colors.green,fontWeight: FontWeight.bold,fontsize: 25.sp,maxline: 1,),

                  SizedBox(height: 15.h,),

                  CustomText(text: "Enter the phone number associated with your account and we’ll send you OTP to reset your password",maxline: 3,textAlign:TextAlign.center,fontsize: 13.sp,textcolor: Colors.black,),

                  SizedBox(height: 20.h,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "Email or Phone Number",textcolor: Colors.black,fontWeight: FontWeight.bold,textAlign: TextAlign.start,),
                      SizedBox(height: 5.h,),
                      CustomTextField(hintText:"Enter your email address",textAlign: TextAlign.start,),
                    ],
                  ),

                  SizedBox(height: 15.h,),

                  CustomButton(height:40.h,text: "Confirm",ontap:(){
                    Get.toNamed(AppRoute.verifyPage);
                  },textcolor: Colors.white,color: Colors.green,borderRadius: BorderRadius.circular(25.r),),

                ],

              ),
            ),
          )


        ],

      ),

    );
  }
}
