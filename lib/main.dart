import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

bool click = false;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          // child: AnimatedContainer(
          //   duration: Duration(milliseconds: 800),
          //   width: 250,
          //   height: 250,
          //   color: Colors.amber.withValues(alpha: click ? 0.5 : 1.0),
          // ),
          child: AnimatedOpacity(
            duration: Duration(milliseconds: 800),
            opacity: click ? 0.2 : 1,
            child: FlutterLogo(size: 250
            )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              click = !click;
            });
          },
        ),
      ),
    );
  }
}
