import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 125,
            // collapsedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              background: FlutterLogo(),
              title: Text("Sliver Grid"),
            ),
          ),

          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(color: Colors.amber[100 * (index % 9)]);
            }, childCount: 50),
            // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //   crossAxisCount: 3,
            //   childAspectRatio: 12 / 7,
            //   crossAxisSpacing: 10,
            //   mainAxisSpacing: 10
            // ),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
              crossAxisSpacing: 10
            ),
          ),
        ],
      ),
    );
  }
}
