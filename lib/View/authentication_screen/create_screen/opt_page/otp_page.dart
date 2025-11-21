import 'package:delivery/Utils/app_images.dart';
import 'package:delivery/View/widget/Custom_Text.dart';
import 'package:delivery/View/widget/custom_button.dart';
import 'package:delivery/core/app_route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

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
                onTap: (){
                  Get.toNamed(AppRoute.createPage);

                },
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


                  CustomText(text: "Verify OTP",textAlign: TextAlign.center,textcolor: Colors.green,fontWeight: FontWeight.bold,fontsize: 25.sp,maxline: 1,),

                  SizedBox(height: 10.h,),

                  CustomText(text: "Enter your OTP which has been sent to your email and completely verify your account.",maxline: 3,textAlign:TextAlign.center,fontsize: 13.sp,textcolor: Colors.black,),

                  SizedBox(height: 25.h,),


                  OTPTextField(
                    length: 4,
                    keyboardType:TextInputType.number,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 55.w,
                    style: TextStyle(fontSize: 20.sp),
                    textFieldAlignment: MainAxisAlignment.spaceEvenly,
                    fieldStyle: FieldStyle.box,
                    otpFieldStyle: OtpFieldStyle(
                      borderColor: Colors.grey,
                      enabledBorderColor: Colors.grey,
                      focusBorderColor: Colors.grey,
                      backgroundColor: Colors.white,
                    ),
                    onChanged: (value) {
                      print("Current value: $value");
                    },
                    onCompleted: (pin) {
                      print("Completed: $pin");
                    },
                  ),



                  SizedBox(height: 20.h,),

                  CustomText(text: "A code has been sent to your email",maxline: 1,),
                  SizedBox(height: 5.h,),
                  CustomText(text: "Resend in 00:57",textcolor: Colors.green,),
                  SizedBox(height: 15.h,),

                  CustomButton(height:40.h,text: "Verify",ontap: (){

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
