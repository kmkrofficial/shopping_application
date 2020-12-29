import 'package:flutter/material.dart';
import 'package:shopping_application/widgets/product_item.dart';
import 'package:provider/provider.dart';
import 'package:shopping_application/provider/product_provider.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductProvider>(context);
    final productDetails = productsData.items;
    return GridView.builder(
      padding: EdgeInsets.fromLTRB(2.0, 0, 2.0, 0),
      itemCount: productDetails.length,
      itemBuilder: (context, i) => ProductItem(
          productName: productDetails[i].productName,
          id: productDetails[i].id,
          imageURL: productDetails[i].imageURL),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
      ),
    );
  }
}
