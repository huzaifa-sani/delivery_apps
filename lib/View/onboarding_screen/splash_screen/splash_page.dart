import 'dart:async';

import 'package:delivery/View/onboarding_screen/onboarding_page/onboarding_page.dart';
import 'package:delivery/core/app_route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3)).then((value) {
      if (mounted) {

        Get.toNamed(AppRoute.onboarding);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(
            child: Container(
              width: 170,
              height: 170,
              child: Center(child: Text("logo",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100.r)
              ),
            ),
          )


        ],

      ),



    );
  }
}
