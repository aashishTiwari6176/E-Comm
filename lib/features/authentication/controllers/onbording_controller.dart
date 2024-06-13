import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnbordingController extends GetxController {
  static OnbordingController get instance => Get.find();

  //Varibles

  final pageController = PageController();

  RxInt currentpageindex = 0.obs;

  //upadate Current Index When Page scroll
  void updatePageIndicator(int index) {
    currentpageindex.value = index;
  }

// jump to the spacific dot selected page
  void dotNavigationClick(index) {
    currentpageindex.value = index;
    pageController.jumpTo(index);
  }

// update current index & jump to next page
  void nextpage() {
    if (currentpageindex.value == 2) {
      Get.offAll(const LoginScrren());
    } else {
      int page = currentpageindex.value + 1;
      pageController.jumpToPage(page);
    }
  }

// update current index & jump to last page
  void skipPage() {
    currentpageindex.value = 2;
    pageController.jumpToPage(2);
  }
}
