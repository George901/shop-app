import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/ui/product_detailed/product_detailed_screen.dart';

class ProductItem extends StatelessWidget {

  final Product _product;

  ProductItem(this._product);

  _goToProduct(BuildContext context) {
    Navigator.of(context).pushNamed("/product-detailed", arguments: _product);
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () => _goToProduct(context),
          child: Image.network(
            _product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () => {},
            color: Theme.of(context).accentColor,
          ),
          backgroundColor: Colors.black87,
          title: Text(_product.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => {},
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }

}
