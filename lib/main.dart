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

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Date Picker')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectDate.toString(),
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: selectDate,
                  firstDate: DateTime(1998),
                  lastDate: DateTime(2029),
                  // initialEntryMode: DatePickerEntryMode.input,
                  // initialDatePickerMode: DatePickerMode.year,
                  // selectableDayPredicate: (day) {
                  //   if ((day.isAfter(
                  //         DateTime.now().subtract(Duration(days: 9)))) &&
                  //       (day.isBefore(DateTime.now().add(Duration(days: 10))))) {
                  //     return true;
                  //   }
                  //   return false;
                  // },

                  helpText: "Help Text",
                  cancelText: "Cancel Text",
                  confirmText: "Confirm Text",
                  fieldHintText: "Field Hint Text",
                  fieldLabelText: "Field Label Text",
                  // builder: (context, child) {
                  //   return Theme(data: ThemeData.dark(), child: child);
                  // },
                ).then((value) {
                  if (value != null) {
                    setState(() {
                      selectDate = value;
                    });
                  }
                });
              },
              child: Text("Date Picker"),
            ),
          ],
        ),
      ),
    );
  }
}
