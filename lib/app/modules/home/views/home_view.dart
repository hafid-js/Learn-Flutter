import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomeView'), centerTitle: true),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BoxMuterMuter(controller.aniC),
          SizedBox(height: 50),
          BoxMuterMuter(controller.aniC),
          SizedBox(height: 50),
          BoxMuterMuter(controller.aniC),
          SizedBox(height: 50),
        ],
      )),
    );
  }
}

class BoxMuterMuter extends AnimatedWidget {
  final animation;
  BoxMuterMuter(this.animation) : super(listenable: animation);

  get progress => listenable as Animation<double>;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: progress.value * pi * 0.25,
      child: Container(width: 100, height: 100, color: Colors.amber),
    );
  }
}
