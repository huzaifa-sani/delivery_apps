import 'package:delivery/Utils/app_colors.dart';
import 'package:delivery/Utils/app_images.dart';
import 'package:delivery/View/widget/Custom_Text.dart';
import 'package:delivery/View/widget/Custom_Textfield.dart';
import 'package:delivery/View/widget/custom_button.dart';
import 'package:delivery/core/app_route/app_route.dart';
import 'package:delivery/service/api_url/api_url.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'create_page_contoleer/create_contoleer.dart';
class CreatePage extends StatelessWidget {
  CreatePage({super.key});

  final CreatPageContoleer controller = Get.put(CreatPageContoleer());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              
              CustomText(text: "Create Your Account",textAlign: TextAlign.center,textcolor: Colors.green,fontWeight: FontWeight.bold,fontsize: 25.sp,maxline: 1,),
              
              SizedBox(height: 5.h,),
              
              CustomText(text: "Join us to explore top Canadian-made products, exclusive deals, and great rewards",maxline: 2,textAlign:TextAlign.center,fontsize: 15.sp,textcolor: Colors.black,),
              
              SizedBox(height: 15.h,),
              
              Padding(
                padding: EdgeInsets.only(left: 15.r,right: 15,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              
                    CustomText(text: "Full Name",textcolor: Colors.black,fontWeight: FontWeight.bold,textAlign: TextAlign.start),
                    SizedBox(height: 5.h,),
                    CustomTextField(hintText:"Enter your full name",textAlign: TextAlign.start,textEditingController: controller.Creat_name_contoleer,),
              
                    SizedBox(height: 10.h,),
              
                    CustomText(text: "Email",textcolor: Colors.black,fontWeight: FontWeight.bold,textAlign: TextAlign.start,),
                    SizedBox(height: 5.h,),
                    CustomTextField(hintText:"Enter your email address",textAlign: TextAlign.start,suffixIcon: Icon(Icons.visibility_off),textEditingController: controller.Creat_email_contoleer,),
              
                    SizedBox(height: 10.h,),
              
                    CustomText(text: "Phone",textcolor: Colors.black,fontWeight: FontWeight.bold,textAlign: TextAlign.start,),
                    SizedBox(height: 5.h,),
                    CustomTextField(hintText:"Enter your phone number",textAlign: TextAlign.start,textEditingController: controller.Creat_phone_contoleer,),
              
                    SizedBox(height: 10.h,),
              
                    CustomText(text: "Password",textcolor: Colors.black,fontWeight: FontWeight.bold,textAlign: TextAlign.start,),
                    SizedBox(height: 5.h,),
                    CustomTextField(hintText:"Enter Password",textAlign: TextAlign.start,suffixIcon: Icon(Icons.visibility_off),textEditingController: controller.Creat_password_contoleer,),
              
                    SizedBox(height: 10.h,),
              
                    CustomText(text: "Confirm Password",textcolor: Colors.black,fontWeight: FontWeight.bold,textAlign: TextAlign.start,),
                    SizedBox(height: 5.h,),
                    CustomTextField(hintText:"Enter Password",textAlign: TextAlign.start,suffixIcon: Icon(Icons.visibility_off),textEditingController: controller.Creat_confirmpassword_contoleer,),
              
                  ],
                ),
              ),
              
              Row(children: [
                //
              
              ],),
              

              
              SizedBox(height: 15.h,),
              Padding(
                padding: EdgeInsets.only(left: 15.r,right: 15.r),
                child: CustomButton(height:40.h,text: "Continue",textcolor: Colors.white,color: Colors.green,borderRadius: BorderRadius.circular(25.r),ontap: (){
                  controller.singUpPage();

              
                },),
              ),
              
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
                  CustomText(text: "Allready have an account? ",),
                  SizedBox(width: 2,),
                  GestureDetector(
                      onTap: (){
                        Get.toNamed(AppRoute.welcomePage);
              
                      },
                      child: CustomText(text: "Sign in",textcolor: Colors.green,fontWeight: FontWeight.bold,)),
              
                ],),
              
              
              
              
            ],
              
          ),
        ),
      ),
    
    );
  }
}
