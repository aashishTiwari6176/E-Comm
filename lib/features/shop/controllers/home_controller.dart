// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final CarousalCurrentIndex = 0.obs;
  void updatepageindicator(index) {
    CarousalCurrentIndex.value = index;
  }
}
