import 'package:delivery/View/authentication_screen/create_screen/create_page/create_page.dart';
import 'package:delivery/View/authentication_screen/create_screen/opt_page/otp_page.dart';
import 'package:delivery/View/authentication_screen/forgot_password/forgot_password.dart';
import 'package:delivery/View/authentication_screen/reset_password/reset_page.dart';
import 'package:delivery/View/authentication_screen/sign_in/welcome_page.dart';
import 'package:delivery/View/authentication_screen/verify_otp/verify_page.dart';
import 'package:delivery/View/home_screen/home_page/home_page.dart';
import 'package:delivery/View/onboarding_screen/onboarding_page/onboarding_page.dart';
import 'package:get/get.dart';

class AppRoute {
  ///==================== Initial Routes ====================
  static const String onboarding = "/onboarding";
  static const String welcomePage = "/welcomePage";
  static const String forgotPassword = "/forgotPassword";
  static const String resetPage = "/resetPage";
  static const String verifyPage = "/verifyPage";
  static const String createPage = "/createPage";
  static const String otpPage = "/otpPage";
  static const String homePage = "/homePage";

  static List<GetPage> routes = [
    ///==================== Authentication  Routes ====================

    GetPage(name: onboarding, page: () => const OnboardingPage()),
    GetPage(name: welcomePage, page: () => const WelcomePage()),
    GetPage(name: forgotPassword, page: () => const ForgotPassword()),
    GetPage(name: resetPage, page: () => const ResetPage()),
    GetPage(name: verifyPage, page: () => const VerifyPage()),
    GetPage(name: createPage, page: () =>  CreatePage()),
    GetPage(name: otpPage, page: () => const OtpPage()),
    GetPage(name: homePage, page: () => const HomePage()),




  ];
}


