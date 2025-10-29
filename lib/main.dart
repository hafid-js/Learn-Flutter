import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              click = !click;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            width: click ? 100 : 300,
            height: click ? 500 : 100,
            color: Colors.amber,
            curve: Curves.bounceInOut,
            alignment: click ? Alignment.centerRight : Alignment.topCenter,
            child: Icon(
              Icons.apple,
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}
