import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(create: (context) => CounterBloc(), child: HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: BlocConsumer<CounterBloc, int>(
          buildWhen: (previous, current) {
            // print("prev : $previous --- curr : $current");
            if(current > 5) {
              return true;
            }
            return false;
          },
          listenWhen: (previous, current) {
            print("curr : $current");
            if(current > 10) {
              return true;
            }
            return false;
          },
          listener: (context, state) {
            if (state > 10) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Di atas 10 bro!"),
                  duration: Duration(milliseconds: 300),
                ),
              );
            }
          },
          builder: (context, state) {
            return Text("Angka $state", style: TextStyle(fontSize: 35));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CounterBloc>().increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}

class CounterBloc extends Cubit<int> {
  CounterBloc() : super(0);

  void increment() => emit(state + 1);
}
