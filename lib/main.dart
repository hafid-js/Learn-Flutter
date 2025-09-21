import 'package:flutter/material.dart';
import 'package:learn_flutter_1/providers/all_products.dart';
import 'package:learn_flutter_1/providers/cart.dart';
import 'package:learn_flutter_1/screens/cart_screen.dart';
import 'package:learn_flutter_1/screens/product_detail_screen.dart';
import 'package:learn_flutter_1/screens/products_overview_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Cart()),
        ChangeNotifierProvider(create: (context) => Products()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.indigo,
          ).copyWith(secondary: Colors.amber),
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
        },
      ),
    );
  }
}


// class ScreenSementara extends StatelessWidget {
//   List<Text> myList = List.generate(50, (index) => Text("${index + 1}", style: TextStyle(fontSize: 35),));

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: ListView(
//         children: 
//           [...myList,
//           Container(width: 100, height: 100, color: Colors.green,)],
//       ),
//     );
//   }
// }
