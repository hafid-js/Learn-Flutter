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
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          width: 400,
          height: 500,
          color: Colors.amber,
          child: AnimatedAlign(
            alignment: click ? Alignment.topLeft : Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  click = !click;
                });
              },
              child: Icon(
              Icons.ac_unit,
              size: 50,
            ),
            ),
            duration: Duration(seconds: 2),),
          ),
      ),
    );
  }
}
