import 'package:flutter/material.dart';

class CartItemWidget extends StatelessWidget {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItemWidget({this.id, this.quantity, this.price, this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListTile(
          leading: CircleAvatar(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: FittedBox(child: Text("\$$price")),
            ),
          ),
          title: Text("$title"),
          subtitle: Text("Total: \$${quantity * price}"),
          trailing: Text("Quantity: $quantity"),
        ),
      ),
    );
  }
}
