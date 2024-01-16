import 'package:app/src/features/authentication/screen/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreenController extends GetxController {
  static WelcomeScreenController get find => Get.find();
   
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to(WelcomeScreen());
  }
}
