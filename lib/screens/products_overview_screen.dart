import 'package:flutter/material.dart';
import 'package:learn_flutter_1/providers/cart.dart';
import 'package:learn_flutter_1/screens/cart_screen.dart';
import 'package:provider/provider.dart';

import '../widgets/product_grid.dart';
import '../widgets/badge.dart' as myBadge;

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: [
          Consumer<Cart>(
            builder: (context, cart, child) => myBadge.Badge(
              child: child!,
              value: cart.jumlah.toString(),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
              icon: Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
      body: ProductGrid(),
    );
  }
}
