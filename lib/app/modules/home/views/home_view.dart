import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomeView'), centerTitle: true),
      body: Center(
        child: AnimatedBuilder(
          animation: controller.animationC,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
            child: const Center(child: Text('Whee!')),
          ),
          builder: (_, ch) {
            return Transform.scale(
              scale: controller.animationC.value * 2.0 * pi,
              child: ch,
            );
          },
        ),
      ),
    );
  }
}
