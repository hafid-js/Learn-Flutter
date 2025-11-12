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
            expandedHeight: 150,
            // collapsedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              background: FlutterLogo(),
              title: Text("Title AppBar"),
            ),
          ),
          SliverPersistentHeader(pinned: true,delegate: MyClass(),),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Center(
                    child: Text(
                      "Item - ${index + 1}",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              );
            }, childCount: 10),
          ),
        ],
      ),
    );
  }
}

class MyClass extends SliverPersistentHeaderDelegate {
@override
Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
  return Stack(
    fit: StackFit.expand,
    children: [
      Image.network(
        "https://picsum.photos/id/100/1000/500",
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) =>
            Container(color: Colors.grey), // fallback
      ),
      Container(
        alignment: Alignment.center,
        color: Colors.black.withOpacity(0.3),
        child: Text(
          "Header Tetap",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    ],
  );
}


  @override
  // TODO: implement maxExtent
  double get maxExtent => 200;

  @override
  // TODO: implement minExtent
  double get minExtent => 100;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
return false;
  }
  
}
