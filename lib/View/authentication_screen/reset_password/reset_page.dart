import 'package:delivery/Utils/app_images.dart';
import 'package:delivery/View/widget/Custom_Text.dart';
import 'package:delivery/View/widget/Custom_Textfield.dart';
import 'package:delivery/View/widget/custom_button.dart';
import 'package:delivery/core/app_route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


class ResetPage extends StatelessWidget {
  const ResetPage({super.key});

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
                  Get.toNamed(AppRoute.verifyPage);

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


                  CustomText(text: "Reset Password",textAlign: TextAlign.center,textcolor: Colors.green,fontWeight: FontWeight.bold,fontsize: 25.sp,maxline: 1,),

                  SizedBox(height: 15.h,),

                  CustomText(text: "Please set a new password to secure your account and regain access",maxline: 2,textAlign:TextAlign.center,fontsize: 13.sp,textcolor: Colors.black,),

                  SizedBox(height: 20.h,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "Password",textcolor: Colors.black,fontWeight: FontWeight.bold,textAlign: TextAlign.start,),
                      SizedBox(height: 5.h,),
                      CustomTextField(hintText:"Create a password",textAlign: TextAlign.start,),

                      SizedBox(height: 5.h,),

                      CustomText(text: "Confirm New Password",textcolor: Colors.black,fontWeight: FontWeight.bold,textAlign: TextAlign.start,),
                      SizedBox(height: 5.h,),
                      CustomTextField(hintText:"Re-enter your new password",textAlign: TextAlign.start,),
                    ],
                  ),

                  SizedBox(height: 15.h,),

                  CustomButton(height:40.h,ontap: (){

                    Alert(

                      style: const AlertStyle(
                        backgroundColor: Colors.white,
                        alertBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),

                          side: BorderSide(color: Colors.grey, width: 1),
                        ),
                      ),

                      context: context,
                      content: Column(
                        children: [

                          Padding(
                            padding: EdgeInsets.all(20.r),
                            child: Image.asset(AppImages.aleart),
                          ),

                          CustomText(text: "Password Changed!",textcolor: Colors.green,fontsize: 18,textAlign: TextAlign.center,),
                          SizedBox(height: 5.h,),

                          CustomText(text: "Your can now use your new password to login to your account.",maxline:2,textcolor: Colors.black,fontsize: 12,textAlign: TextAlign.center,),
                          SizedBox(height: 10.h,),


                          Padding(
                            padding: EdgeInsets.only(left: 10.r,right: 10.r),
                            child: CustomButton(text: "Login",textfontweight: FontWeight.bold,textcolor: Colors.white,color: Colors.green,borderRadius: BorderRadius.circular(25.r),height: 40.h,width: double.maxFinite,ontap: (){
                              Get.toNamed(AppRoute.homePage);
                            },),
                          )
                        ],
                      ),
                      buttons: [],
                    ).show();



                  },text: "Save Changes",textcolor: Colors.white,color: Colors.green,borderRadius: BorderRadius.circular(25.r),),

                ],

              ),
            ),
          )


        ],

      ),

    );
  }
}
