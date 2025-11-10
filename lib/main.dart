import 'dart:ui';

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
      appBar: AppBar(backgroundColor: Colors.green),
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          child: CustomPaint(painter: MyPainter()),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    var center = Offset(size.width / 2, size.height / 2);

    Paint linePaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 30
      ..strokeCap = StrokeCap.round;

          canvas.drawCircle(center, size.width / 2, linePaint);
    // canvas.drawLine(Offset(0, 0), Offset(0, size.height), linePaint);
    //  canvas.drawLine(Offset(0, size.height), Offset(size.width, 0), linePaint);
    //  canvas.drawLine(Offset(size.width, 0), Offset(0, 0), linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
