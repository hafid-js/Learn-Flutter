import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomeView'), centerTitle: true),
      body: Center(
        child: FadeTransition(
          opacity: controller.animation,
          child: Container(width: 200, height: 200, color: Colors.red[900]),
        ),
      ),
    );
  }
}
