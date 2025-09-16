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
        appBar: AppBar(title: Text("Fitur Text Field")),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(autocorrect: false, autofocus: false, enableSuggestions: true, enableInteractiveSelection: false, keyboardType: TextInputType.phone ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
