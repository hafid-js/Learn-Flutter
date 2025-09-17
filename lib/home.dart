import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data = "Belum ada input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialog")),
      body: Center(
        child: Text(data, style: TextStyle(fontSize: 35),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Confirm"),
                content: Text("Are u sure to delete this content?"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                      setState(() {
                        data = "False";
                      });
                    },
                    child: Text("No"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                      setState(() {
                        data = "True";
                      });
                    },
                    child: Text("Yes"),
                  ),
                ],
              );
            },
          ).then((value) => print(value));
        },
        child: Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
