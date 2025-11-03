import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeController extends GetxController with GetSingleTickerProviderStateMixin{
  late final AnimationController animationC;

  @override
  void onInit() {
    animationC = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
    super.onInit();
  }

  @override
  void onClose() {
    animationC.dispose();
    super.onClose();
  }
}
