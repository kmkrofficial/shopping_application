import 'package:flutter/material.dart';
import 'package:shopping_application/provider/product_provider.dart';
import 'package:provider/provider.dart';

class ProductFullDetailsScreen extends StatelessWidget {
  static const productFullDetailsScreenRouteName = "/productsFullDetailsScreen";

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct =
        Provider.of<ProductProvider>(context).getById(productId);
    print(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.productName),
      ),
    );
  }
}
