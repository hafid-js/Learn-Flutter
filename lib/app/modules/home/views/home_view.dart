import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learn_flutter_1/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Get.toNamed(Routes.DETAIL, arguments: index + 500),
              child: Hero(
                tag: '${index + 500}',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    "https://picsum.photos/id/${index + 500}/1000",
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
