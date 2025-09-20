import 'package:flutter/material.dart';
import 'package:learn_flutter_1/providers/all_products.dart';
import 'package:learn_flutter_1/widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);

    final allProduct = productData.allProducts;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: allProduct.length,
      itemBuilder: (ctx, i) => ProductItem(
        allProduct[i].id!,
        allProduct[i].title!,
        allProduct[i].imageUrl!,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}