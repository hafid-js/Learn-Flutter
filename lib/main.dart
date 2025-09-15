import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> myTab = [
    Tab(icon: Icon(Icons.add_a_photo)),
    Tab(icon: Icon(Icons.ac_unit_outlined)),
    Tab(text: "Tab 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 2,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My Apps"),
              bottom: TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.green,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  
                ),
                unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.normal
                ),
                // indicatorColor: Colors.black,
                // indicatorWeight: 5,
                // indicatorPadding: EdgeInsets.all(10),
                indicator: BoxDecoration(
                  color: Colors.amber,
                  
                  
                  // borderRadius: BorderRadius.circular(50),
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 5
                    )
                  )
                ),
                tabs: myTab,
                ),
            ),
            body: TabBarView(
              children:[
              Center(
                child: Text("Tab 1"),
              ),
              Center(
                child: Text("Tab 2"),
              ),
              Center(
                child: Text("Tab 3"),
              ),
              ]),
          ),
        ),
    );
  }
}
