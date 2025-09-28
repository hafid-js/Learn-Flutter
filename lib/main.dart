import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> data = ["hafid", "aulia", "eni"];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dropdown')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: DropdownSearch<String>(
        items: (f, cs) => data,
        popupProps: PopupProps.menu(
          showSelectedItems: true,
          
          disabledItemFn: (String? data) => data?.startsWith('h') ?? false,
          fit: FlexFit.loose,
          
          
        ),
        decoratorProps: DropDownDecoratorProps(
          decoration: InputDecoration(
            labelText: "Menu Mode",
            hintText: "Select Human ...",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            )
          
          ),
        ),
        
      ),
        ),
      );
  }
}
