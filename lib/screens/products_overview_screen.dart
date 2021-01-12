import 'package:flutter/material.dart';

import '../widgets/products_grid.dart';

enum FilterOptions {
  OnlyFavorites,
  All,
}

class ProductsOverviewScreen extends StatefulWidget {
  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var showFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.OnlyFavorites) {
                  showFavorites = true;
                } else {
                  showFavorites = false;
                }
              });
            },
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text("Only Favorites"),
                value: FilterOptions.OnlyFavorites,
              ),
              PopupMenuItem(
                child: Text("All"),
                value: FilterOptions.All,
              ),
            ],
            icon: Icon(Icons.more_vert),
          ),
        ],
        title: Text('MyShop'),
      ),
      body: ProductsGrid(showFavorites),
    );
  }
}
