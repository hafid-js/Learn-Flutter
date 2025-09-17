import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flexible dan Expanded")),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              height: 100,
              color: Colors.red,
            ),
          ),
          Flexible(
                    flex: 1,
            child: Container(
              height: 100,
              color: Colors.green,
            ),
          ),
          Flexible(
            flex: 6,
            child: Container(
              height: 100,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
