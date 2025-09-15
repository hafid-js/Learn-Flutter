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
        appBar: AppBar(
          title: Text("List Tile"),
        ),
        body: ListView(
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              title: Text("Nadia Rahayu"),
              subtitle: Text("is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", maxLines: 2, overflow: TextOverflow.ellipsis,),
              leading: CircleAvatar(),
              trailing: Text("10:00 WIB"),
              // onTap: () {
              //   return
              // },
              tileColor: Colors.pink,
              dense: true,
            ),
           Divider(
              color: Colors.black
            ),
            ListTile(
              title: Text("Nadia Rahayu"),
              subtitle: Text("This is subtitle okay..."),
              leading: CircleAvatar(),
              trailing: Text("10:00 WIB"),
            ),
            Divider(
              color: Colors.black
            ),
            ListTile(
              title: Text("Nadia Rahayu"),
              subtitle: Text("This is subtitle okay..."),
              leading: CircleAvatar(),
              trailing: Text("10:00 WIB"),
            ),
            Divider(
              color: Colors.black
            ),
            ListTile(
              title: Text("Nadia Rahayu"),
              subtitle: Text("This is subtitle okay..."),
              leading: CircleAvatar(),
              trailing: Text("10:00 WIB"),
            ),
            Divider(
              color: Colors.black
            ),
            ListTile(
              title: Text("Nadia Rahayu"),
              subtitle: Text("This is subtitle okay..."),
              leading: CircleAvatar(),
              trailing: Text("10:00 WIB"),
            ),
            Divider(
              color: Colors.black
            ),
          ],
        ),
      ),
    );
  }
}