import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_application/provider/product_provider.dart';
import 'package:shopping_application/screens/product_full_details.dart';
import 'package:shopping_application/screens/product_overview_screen.dart';
import 'provider/product_provider.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductProvider(),
      child: MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.orangeAccent,
            fontFamily: "Lato"),
        home: ProductOverviewScreen(),
        routes: {
          ProductOverviewScreen.ProductOverviewScreenRouteName: (context) =>
              ProductOverviewScreen(),
          ProductFullDetailsScreen.productFullDetailsScreenRouteName:
              (context) => ProductFullDetailsScreen(),
        },
      ),
    );
  }
}
