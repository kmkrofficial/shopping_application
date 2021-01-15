import 'package:flutter/material.dart';
import 'package:shopping_application/screens/orders_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        AppBar(
          title: Text("Hello Friend!"),
          automaticallyImplyLeading: false,
        ),
        Divider(),
        ListTile(
          title: Text("Shop"),
          leading: Icon(Icons.shop),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
        Divider(),
        ListTile(
          title: Text("Orders"),
          leading: Icon(Icons.receipt),
          onTap: () {
            Navigator.pushReplacementNamed(context, OrdersScreen.routeName);
          },
        )
      ],
    ));
  }
}
