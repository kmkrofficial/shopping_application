import 'package:flutter/material.dart';
import 'package:shopping_application/widgets/product_grid.dart';

class ProductOverviewScreen extends StatelessWidget {
  static const ProductOverviewScreenRouteName = '/productOverviewScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shopping App"),
      ),
      body: ProductGrid(),
    );
  }
}
