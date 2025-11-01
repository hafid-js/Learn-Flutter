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
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 350,
              color: Colors.amber,
            ),
            SizedBox(height: 10),
            AnimatedCrossFade(
              firstChild: Container(
              height: 150,
              width: 150,
              color: Colors.red,
            ),
              secondChild: Container(
              height: 350,
              width: 50,
              color: Colors.green,
            ),
              crossFadeState: click ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(
                milliseconds: 800
              )),
            SizedBox(height: 10),
             Container(
              height: 150,
              width: 250,
              color: Colors.amber,
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          click = !click;
        });
      }),
    );
  }
}
