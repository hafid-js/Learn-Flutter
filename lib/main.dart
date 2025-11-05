import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: AvatarGlow(
  startDelay: const Duration(milliseconds: 200),
  glowColor: Colors.white,
  glowShape: BoxShape.circle,
  curve: Curves.fastOutSlowIn,
  child: const Material(
    elevation: 8.0,
    shape: CircleBorder(),
    color: Colors.transparent,
    child: CircleAvatar(
      backgroundImage: AssetImage('assets/images/avatar.png'),
      radius: 50.0,
    ),
  ),
),
        ),
      ),
    );
  }
}
