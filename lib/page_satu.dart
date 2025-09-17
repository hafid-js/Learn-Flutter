import 'package:flutter/material.dart';

void main() {
  runApp(PageSatu());
}

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Page Satu"),
        ),
      ),
    );
  }
}