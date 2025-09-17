import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
        // visualDensity: VisualDensity.comfortable,
        // visualDensity: VisualDensity.compact,
        // visualDensity: VisualDensity(horizontal: 4, vertical: 0),
        // primaryColor: Colors.red
        // primarySwatch: MaterialColor(0xFFF5E0CE, <int, Color>{
        //   50: Color(0x1a5D424),
        //   100: Color(0xa15D4524),
        //   // dan seterusnya, bebas custom
        // }),
        // appBarTheme: AppBarTheme()
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Theme App")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This is a text.", style: TextStyle(fontSize: 35)),
              SizedBox(height: 20),
              Text("This is a text.", style: TextStyle(fontSize: 35)),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text("Button", style: TextStyle(fontSize: 35)),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.mediation),
        ),
      ),
    );
  }
}
