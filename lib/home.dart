import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final Faker faker = Faker();
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data = "Belum ada input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dismissible")),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: 100,
        itemBuilder: (context, index) {
          return Dismissible(
            onDismissed: (direction) {
              print("Dismissed");
              print(direction);
              if(direction == DismissDirection.endToStart) {
                print("End to Start");
              } else {
                print("Start to end");
              }
            },
            confirmDismiss: (direction) {
              return showDialog(context: context, builder:(context) {
                return AlertDialog(
                  title: Text("Confirm"),
                  content: Text("Are you sure to delete this item ?"),
                  actions: [
                    TextButton(onPressed: () {
                     Navigator.of(context).pop(false);
                    }, child: Text("No")),
                    TextButton(onPressed: () {
                      Navigator.of(context).pop(true);
                    }, child: Text("Yes"))
                  ],
                );
              },);
            },
            key: Key(index.toString()),
            // direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              child: Icon(Icons.delete, size: 25,),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 10),
            ),
            child: ListTile(
              leading: CircleAvatar(
                child: Center(
                  child: Text("${index + 1}"),
                ),
              ),
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
            ),
          );
        },
      ),
    );
  }
}
