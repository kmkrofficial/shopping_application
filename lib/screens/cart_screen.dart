import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_application/providers/cart.dart' show Cart;
import '../widgets/cart_item.dart' as ci;

class CartScreen extends StatelessWidget {
  static final routeName = "/cart_screen";

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
      ),
      body: Column(
        children: [
          Card(
            child: Row(
              children: [
                Text(
                  "Total",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 10,
                ),
                Chip(
                  label: Text("\$${cart.totalPrice}"),
                  backgroundColor: Theme.of(context).accentColor,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, i) => ci.CartItemWidget(
                title: cart.items.values.toList()[i].title,
                id: cart.items.values.toList()[i].id,
                price: cart.items.values.toList()[i].pricing,
                quantity: cart.items.values.toList()[i].quantity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
