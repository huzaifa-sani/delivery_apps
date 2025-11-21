import 'package:delivery/Utils/app_colors.dart';
import 'package:delivery/Utils/app_strings.dart';
import 'package:delivery/View/widget/custom_button.dart';
import 'package:delivery/core/app_route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.buttontextoclor,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [


          Container(
            width: double.maxFinite.w,
            height: 400.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Expanded(
                  child: PageView.builder(
                    controller: controller,
                    itemCount: AppString.mylenth.length,
                    itemBuilder: (context,index){
                      final data = AppString.mylenth[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Image.asset(
                            data["image"],
                            height: 250.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),

                          SizedBox(height: 30.h,),

                          Text(
                            data["titel"],
                            style: TextStyle(color: AppColors.buttoncolor,fontWeight:FontWeight.bold,fontSize: 22.sp),


                          ),
                          SizedBox(height: 10.h,),



                          Padding(
                            padding: EdgeInsets.only(left: 20.r,right: 20.r),
                            child: Text(
                              data["subtitel"],
                              textAlign: TextAlign.center,
                              maxLines: 3,

                              style: TextStyle(color: AppColors.subtitelcolors,fontSize: 14.sp),


                            ),
                          )


                        ],

                      );


                  },

                  ),

                )


              ],



            ),

          ),



          SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect:  WormEffect(
                dotHeight: 10.h,
                dotWidth: 14.w,
                dotColor: AppColors.dotcolors,
                activeDotColor: AppColors.fucascolor
              ),
              onDotClicked: (index){
              }
          ),


          Column(
            children: [

              Padding(
                padding: EdgeInsets.only(left: 50.r,right: 50.r),
                child: CustomButton(height: 40.h,width:double.maxFinite,text: "${AppString.SignUp}",ontap:(){

                  Get.toNamed(AppRoute.createPage);

                },borderRadius: BorderRadius.circular(30),textcolor: AppColors.buttontextoclor,color: AppColors.buttoncolor,),
              ),

              SizedBox(height: 15.h,),

              Padding(
                padding: EdgeInsets.only(left: 50.r,right: 50.r),
                child: CustomButton(height: 40.h,width:double.maxFinite,text: "${AppString.SignIn}",ontap: (){

                  Get.toNamed(AppRoute.welcomePage);

                },borderRadius: BorderRadius.circular(30),textcolor: Colors.black,border:Border.all(width: 2,color: AppColors.buttoncolor)),
              ),

            ],

          )






        ],
      ),

    );
  }
}

