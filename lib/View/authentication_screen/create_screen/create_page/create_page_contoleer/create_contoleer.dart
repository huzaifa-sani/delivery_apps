import 'dart:convert';
import 'package:delivery/service/api_url/api_url.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class CreatPageContoleer extends GetxController {


  TextEditingController Creat_name_contoleer = TextEditingController();
  TextEditingController Creat_email_contoleer = TextEditingController();
  TextEditingController Creat_phone_contoleer = TextEditingController();
  TextEditingController Creat_password_contoleer = TextEditingController();
  TextEditingController Creat_confirmpassword_contoleer = TextEditingController();

  Future<void> singUpPage() async {

    if (Creat_name_contoleer.text.isEmpty ||
        Creat_email_contoleer.text.isEmpty ||
        Creat_phone_contoleer.text.isEmpty ||
        Creat_password_contoleer.text.isEmpty ||
        Creat_confirmpassword_contoleer.text.isEmpty) {

      Get.snackbar("Alert", "Enter all fields");
      return;
    }

    if (Creat_password_contoleer.text != Creat_confirmpassword_contoleer.text) {
      Get.snackbar("Alert", "Passwords do not match");
      return;
    }

    var client = http.Client();
    try {
      final fullUrl = Uri.parse("${ApiConstant.baseUrl}${ApiConstant.signUp}");
      final response = await client.post(fullUrl,
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({
            "name": Creat_name_contoleer.text,
            "role": "USER",
            "contact": Creat_phone_contoleer.text,
            "countryCode": "+880",
            "email": Creat_email_contoleer.text,
            "password": Creat_password_contoleer.text,
            "location": "Dhaka, Bangladesh"
          })
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        var data = jsonDecode(response.body);
        print(data);
        Get.snackbar("Success", "Account created successfully");
      } else {
        Get.snackbar("Error", "Failed to create account");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      client.close();
    }
  }
}






