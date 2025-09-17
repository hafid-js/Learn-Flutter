import 'package:flutter/material.dart';
import 'package:learn_flutter_1/page_satu.dart';
import 'package:learn_flutter_1/settings_page.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool statusSwitch = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Switch")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 100,
              child : Switch.adaptive(
                activeThumbColor: Colors.amber,
                inactiveThumbColor: Colors.indigo,
                activeTrackColor: Colors.green,
                inactiveTrackColor: Colors.red,

                activeThumbImage: AssetImage('/images/image.jpg'),
                inactiveThumbImage: AssetImage('/images/image.jpg'),
                value: statusSwitch,
                onChanged: (value) {
                  setState(() {
                    statusSwitch = !statusSwitch;
                  });
                },
              ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                (statusSwitch == true) ? "Switch On" : "Switch Off",
                style: TextStyle(fontSize: 35),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
