import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants/products.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/ui/products_list/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {

  final List<Product> _products = PRODUCTS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop"),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: _products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3/2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
          ),
          itemBuilder: (ctx, index) => ProductItem(_products[index]),
      ),
    );
  }

}
