import 'package:flutter/material.dart';
import 'package:shopping_application/screens/product_full_details.dart';

class ProductItem extends StatelessWidget {
  final String productName;
  final String id;
  final String imageURL;

  ProductItem(
      {@required this.productName, @required this.id, @required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context,
                ProductFullDetailsScreen.productFullDetailsScreenRouteName,
                arguments: id);
          },
          child: Image.network(
            imageURL,
            fit: BoxFit.contain,
          ),
        ),
        footer: GridTileBar(
          title: Text(
            productName,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black87,
          leading: IconButton(
            color: Theme.of(context).accentColor,
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
          trailing: IconButton(
            color: Theme.of(context).accentColor,
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
