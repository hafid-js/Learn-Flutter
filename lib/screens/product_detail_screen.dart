import 'package:flutter/material.dart';
import 'package:learn_flutter_1/providers/all_products.dart';
import 'package:learn_flutter_1/providers/cart.dart';
import 'package:learn_flutter_1/screens/cart_screen.dart';
import 'package:provider/provider.dart';
import '../widgets/badge.dart' as myBadge;

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final product = Provider.of<Products>(context).findById(productId);
    final cart = Provider.of<Cart>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
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
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            child: Image.network("${product.imageUrl}", fit: BoxFit.cover),
          ),
          SizedBox(height: 30),
          Text(
            "${product.title}",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Text(
            "\$${product.price}",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Text(
            "${product.description}",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Berhasil Ditambahkan"),
                  duration: Duration(milliseconds: 500),
                ),
              );
              cart.addCart(product.id, product.title, product.price);
            },
            child: Text("Add to Cart", style: TextStyle(fontSize: 24)),
          ),
        ],
      ),
    );
  }
}
