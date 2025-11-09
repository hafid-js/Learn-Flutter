import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ClipRect(

          child: Align(
            alignment: Alignment.topRight,
            heightFactor: 0.75,
            widthFactor: 0.5,
            child: Container(
              color: Colors.amber,
              child: 
              FlutterLogo(
          size: 200,
        ),
            )
          ),
        )
      ),
      );
  }
}