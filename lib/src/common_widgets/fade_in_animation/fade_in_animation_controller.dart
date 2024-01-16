import 'package:app/src/features/authentication/screen/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FadeInAnimationController extends GetxController {
  static FadeInAnimationController get find => Get.find();
   
  RxBool animate = false.obs;

  Future animateIn() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.offAll(() => WelcomeScreen());
  }
  
  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
  }
}
