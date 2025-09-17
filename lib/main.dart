
import 'package:flutter/material.dart';
import 'package:learn_flutter_1/pages/gallery_page.dart';
import 'package:learn_flutter_1/pages/home_page.dart';
import 'package:learn_flutter_1/pages/photo_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      initialRoute: HomePage.nameRoute,
      routes: {
       HomePage.nameRoute : (context) => HomePage(),
        GalleryPage.nameRoute: (context) => GalleryPage(),
        PhotoPage.nameRoute: (context) => PhotoPage(),
      },
    );
  }
}

