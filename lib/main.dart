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
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              background: FlutterLogo(),
              title: Text("SliverToBox"),
            ),
          ),
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (context, index) => Column(
          //       children: [
          //         Container(
          //           width: 150,
          //           height: 150,
          //           color: Colors.amber,
          //         ),
          //         Container(
          //           width: 150,
          //           height: 150,
          //           color: Colors.red,
          //         )
          //       ],
          //     ),
          //     childCount: 2
          //   ),
          // ),
          SliverToBoxAdapter(
            child: Container(
              height: 400,
              color: Colors.grey,
              child: ListView(
                padding: EdgeInsets.all(0),
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.amber,
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.red,
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.green,
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.blue,
                    )
                  ],
                ),
            ),
          )
        ],
      ),
    );
  }
}
