import 'package:delivery/View/onboarding_screen/splash_screen/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'core/app_route/app_route.dart';

void main (){

  WidgetsFlutterBinding.ensureInitialized();
  runApp(Myapps());
}

class Myapps extends StatelessWidget {
  const Myapps({super.key});

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages: AppRoute.routes,
          home: child,
        );
      },
      child: const SplashPage(),
    );
  }
}