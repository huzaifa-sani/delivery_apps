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
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[

          Padding(
            padding: EdgeInsets.only(left: 15.r,right: 15.r),
            child: Container(
              width: double.maxFinite.w,
              height: 600.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  

                  CustomText(text: "Welcome Back",textAlign: TextAlign.center,textcolor: Colors.green,fontWeight: FontWeight.bold,fontsize: 25.sp,maxline: 1,),

                  SizedBox(height: 5.h,),

                  CustomText(text: "Log in to continue shopping and enjoy personalized offers",maxline: 2,textAlign:TextAlign.center,fontsize: 15.sp,textcolor: Colors.black,),

                  SizedBox(height: 15.h,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      CustomText(text: "Email or Phone Number",textcolor: Colors.black,fontWeight: FontWeight.bold,textAlign: TextAlign.start,),
                      SizedBox(height: 5.h,),
                      CustomTextField(hintText:"Enter your email address",textAlign: TextAlign.start,),

                      SizedBox(height: 10.h,),

                      CustomText(text: "Password",textcolor: Colors.black,fontWeight: FontWeight.bold,textAlign: TextAlign.start,),
                      SizedBox(height: 5.h,),
                      CustomTextField(hintText:"Enter Password",textAlign: TextAlign.start,suffixIcon: Icon(Icons.visibility_off),)

                    ],
                  ),

                  SizedBox(height: 15.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    GestureDetector(
                        onTap:(){Get.toNamed(AppRoute.forgotPassword);},
                        child: CustomText(text: "Forgot password?",textcolor: Colors.green,))

                  ],),

                  SizedBox(height: 15.h,),
                  CustomButton(height:40.h,text: "Sign In",textcolor: Colors.white,color: Colors.green,borderRadius: BorderRadius.circular(25.r),ontap: (){
                   Get.toNamed(AppRoute.homePage);

                  },),

                  SizedBox(height: 5.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(text: "or",)

                    ],),

                  SizedBox(height: 5.h,),


                      Container(
                        width: 350,
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.r),
                          border: Border.all(width: 2,color: AppColors.bordercolor)

                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Image.asset(AppImages.googlee),
                            SizedBox(width: 10.w,),

                            Text("Continue with Google",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)



                          ],

                        ),

                      ),

                  SizedBox(height: 15,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(text: "Don’t have an account?",),
                      SizedBox(width: 4,),
                      GestureDetector(
                          onTap: (){

                            Get.toNamed(AppRoute.createPage);

                          },
                          child: CustomText(text: "Create Account",textcolor: Colors.green,)),

                    ],),









                ],
                
              ),
            ),
          )


        ],

      ),

    );
  }
}
