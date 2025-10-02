import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  bool isDark = false;

  Future<void> setPreference() async {
    final jembatan = await SharedPreferences.getInstance();

    if(jembatan.containsKey('myData')){
      jembatan.clear();
    }

    final myData = json.encode({
      'counter': counter.toString(),
      'isDark': isDark.toString(),
    });

    jembatan.setString('myData', myData);
    setState(() {});
  }


  Future<void> getPreference() async {
    final jembatan = await SharedPreferences.getInstance();

    if(jembatan.containsKey('myData')){
      final myData = json.decode(jembatan.getString('myData')!) as Map<String, dynamic>;

      counter = int.parse(myData["counter"]);
      isDark = myData["isDark"] == "true" ? true : false;
    }
  }

  void minus() {
    counter = counter - 1;
    setPreference();
  }

  void plus() {
    counter = counter + 1;
    setPreference();
  }

void changeTheme() {
  setState(() {
    isDark = !isDark;
    setPreference();
  });
}

void refresh() {
  counter = 0;
  isDark = false;
  setPreference();
}




  ThemeData dark = ThemeData(
    useMaterial3: true,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        side: BorderSide(color: Colors.white, width: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
    ),

    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.amber,
      brightness: Brightness.dark,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.amber,
      foregroundColor: Colors.black,
    ),
  );

  ThemeData light = ThemeData(
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        side: BorderSide(color: Colors.white, width: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
    ),

    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.amber,
      brightness: Brightness.light,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.amber,
      foregroundColor: Colors.white,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getPreference(),
      builder:(context, _) => MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDark ? dark : light,
      home: Scaffold(
        appBar: AppBar(title: Text("Counter Apps"),
        actions: [
          IconButton(onPressed: refresh, icon: Icon(Icons.refresh))
        ],)
        ,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Angka saat ini adalah : $counter",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: minus, child: Icon(Icons.remove)),
                  SizedBox(width: 20),
                  ElevatedButton(onPressed: plus, child: Icon(Icons.add)),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: changeTheme,
          child: Icon(Icons.color_lens),
        ),
      ),
    ),
    );
}}
