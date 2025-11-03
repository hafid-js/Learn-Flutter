import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Detail'), centerTitle: true),
      body: ListView(
        children: [
          Hero(
            tag: Get.arguments.toString(),
            child: Image.network(
              "https://picsum.photos/id/${Get.arguments}/1000",
            ),
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          ),
        ],
      ),
    );
  }
}
