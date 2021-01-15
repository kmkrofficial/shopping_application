import 'package:flutter/material.dart';
import '../providers/order.dart' as ord;
import 'package:provider/provider.dart';
import '../widgets/order_item.dart' as wid;

class OrdersScreen extends StatelessWidget {
  static final routeName = "/orders_screen";

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<ord.Order>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Orders"),
      ),
      body: Container(
          child: ListView.builder(
        itemCount: orderData.items.length,
        itemBuilder: (ctx, i) => wid.OrderItem(ord: orderData.orders[i]),
      )),
    );
  }
}
