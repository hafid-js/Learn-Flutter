import 'package:flutter/material.dart';
import 'package:learn_flutter_1/pages/page_dua.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Page 1")),
        body: Center(child: Text("Ini Page 1", style: TextStyle(fontSize: 50))),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) {
                  return PageDua();
                },
              ),
            );
          },
          child: Icon(Icons.keyboard_arrow_right),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
