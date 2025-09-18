import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
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
      appBar: AppBar(title: Text('Cuppertino')),
      body: Center(
        child: ElevatedButton(
          // onPressed: () {
          //   child:
          //   showDialog(
          //     context: context,
          //     builder: (context) {
          //       return Platform.isIOS
          //           ? CupertinoAlertDialog(
          //               title: Text("Delete Item"),
          //               content: Text("Are u sore to delete this item?"),
          //               actions: [
          //                 TextButton(onPressed: () {}, child: Text("No")),
          //                 TextButton(onPressed: () {}, child: Text("Yes")),
          //               ],
          //             )
          //           : AlertDialog(
          //               title: Text("Delete Item"),
          //               content: Text("Are u sore to delete this item?"),
          //               actions: [
          //                 TextButton(onPressed: () {}, child: Text("No")),
          //                 TextButton(onPressed: () {}, child: Text("Yes")),
          //               ],
          //             );
          //     },
          //   );
          // },
          // child: Text("Alert Dialog"),
          onPressed: () {
            Platform.isAndroid
                ? showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1998),
                    lastDate: DateTime(2050),
                  )
                : showCupertinoModalPopup(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        color: Colors.white,
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
                        onDateTimeChanged: (datetime) {
                          print(datetime);
                        },
                        initialDateTime: DateTime.now(),
                      ),
                      );
                    },
                  );
          },
           child: Text("Cupertino Date Time"),
        ),
                 
      ),
    );
  }
}
