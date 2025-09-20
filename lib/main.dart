import 'package:flutter/material.dart';
import 'package:learn_flutter_1/providers/all_products.dart';
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
    return ChangeNotifierProvider(create: (context) => Products(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyShop',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.indigo,
        ).copyWith(
          secondary: Colors.amber,
        ),
      ),
      home: ProductsOverviewScreen(),
      routes: {
        ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
      },
    ),
    );
  }
}
