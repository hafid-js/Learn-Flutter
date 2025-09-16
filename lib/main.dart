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
        appBar: AppBar(title: Text("Fitur Text Field")),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: 
                TextField(
                  showCursor: true,
                  autocorrect: false,
                  cursorColor: Colors.amber,
                  // cursorWidth: 10,
                  // cursorHeight: 25,
                  // cursorRadius: Radius.circular(20),

                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.bottom,
                  textCapitalization: TextCapitalization.words,

                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20
                  ),

                  decoration: InputDecoration(

                    icon: Icon(
                      Icons.person,
                      size: 35,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:Colors.black
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red
                      )
                    ),

                    prefixIcon: Icon(Icons.add_a_photo),
                    suffixIcon: IconButton(onPressed: () {
                      
                    }, icon: Icon(Icons.remove_red_eye))
                    // prefixIcon: Icon(
                    //   Icons.person_add,
                    //   size: 35,
                    // ),
                    // prefixText: "Name: ",
                    // prefix: Icon(
                    //   Icons.person_add,
                    //   size: 35,
                    // )

                    hintText: "Please input your name..",
                    hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),
                    labelText: "Full Name",
                    labelStyle: TextStyle(
                      color: Colors.black
                    )
                  ),
                )
            ),
          ),
        ),
      );
  }
}
