import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final AnimationController animationC;

  late final Animation<double> animation;

  @override
  void onInit() {
    animationC = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    )..repeat(reverse: true);

    animation = CurvedAnimation(parent: animationC, curve: Curves.ease);
    super.onInit();
  }

  @override
  void dispose() {
    animationC.dispose();
    super.dispose();
  }
}
