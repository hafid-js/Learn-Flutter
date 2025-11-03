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
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Center(
        child: SizedBox(
          width: 350,
          height: 350,
          child: Stack(
            children: [
              Container(
                width: 350,
                height: 350,
                color: Colors.blue,
                child: Center(child: Text("Hello", style: TextStyle(fontSize: 25),)),
              ),
              AnimatedPositioned(
                curve: Curves.fastOutSlowIn,
                top: click ? 100 : 150,
                left: 100,
                duration: Duration(seconds: 2),
                child: Container(width: 150, height: 50, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            click = !click;
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
