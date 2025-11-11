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
            backgroundColor: Colors.blue,
            expandedHeight: 120,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Silver List"),
              background: FlutterLogo(),
            ),
          ),

          // SliverList(
          //   delegate: SliverChildBuilderDelegate((ctx, index) {
          //     return ListTile(
          //       leading: CircleAvatar(),
          //       title: Text("Data ke - ${index + 1}"),
          //     );
          //   }, childCount: 20),
          // ),
          // SliverList(delegate: SliverChildListDelegate.fixed(
          //   [
          //     Container(
          //     height: 100,
          //     color: Colors.green[600],
          //   ),
          //   Container(
          //     height: 100,
          //     color: Colors.pink[600],
          //   )
          //   ]
          // ))

          // SliverFixedExtentList(delegate: SliverChildBuilderDelegate(
          //   (ctx, index) {
          //     return Container(color: Colors.amber[100 * (index % 9)]);
          //   }, childCount: 9
          // ), itemExtent: 200)
          SliverPrototypeExtentList(
            delegate: SliverChildBuilderDelegate((ctx, index) {
              return Container(color: Colors.amber[900]);
            }, childCount: 1),
            prototypeItem: Padding(
              padding: const EdgeInsets.all(20),
              child: Text("Halo"),
            ),
          ),
        ],
      ),
    );
  }
}
