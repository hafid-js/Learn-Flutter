
import 'package:flutter/material.dart';
import 'package:learn_flutter_1/page_satu.dart';
import 'package:learn_flutter_1/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Drawer"),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 150,
                color: Colors.red,
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Menu Pilihan",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => PageSatu())
                  );
                },
                leading: Icon(Icons.home, size: 35,),
                title: Text("Home", style: TextStyle(
                    fontSize: 24
                  ),),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => SettingsPage())
                  );
                },
                leading: Icon(Icons.settings, size: 35,),
                title: Text("Settings", style: TextStyle(
                    fontSize: 24
                  ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}

