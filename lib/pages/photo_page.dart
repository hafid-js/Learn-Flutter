import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class PhotoPage extends StatefulWidget {
  final Faker faker = Faker();
    static const nameRoute = '/photo';
  @override
  State<PhotoPage> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  String data = "Belum ada input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Photo Page")),
      body: Center(
        child: Text("Photo page",
        style: TextStyle(
          fontSize: 50
        ),),
      ),
    );
  }
}
