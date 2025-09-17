import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter_1/pages/photo_page.dart';

class GalleryPage extends StatefulWidget {
  final Faker faker = Faker();
    static const nameRoute = '/gallery';
  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  String data = "Belum ada input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gallery Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Gallery page",
        style: TextStyle(
          fontSize: 50
        ),),
        Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              }, child: Text("<< Back", style: TextStyle(
          fontSize: 30
        ))),
              TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(PhotoPage.nameRoute);
              }, child: Text("Next >>", style: TextStyle(
          fontSize: 30
        )))
          ],
        )
          ],
        )
        
      ),
    );
  }
}
