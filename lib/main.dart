
import 'package:flutter/material.dart';
import 'package:learn_flutter_1/pages/page_satu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageSatu()
    );
  }
}

