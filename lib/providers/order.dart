import 'package:flutter/foundation.dart';
import 'cart.dart';

class OrderItem {
  final String id;
  final double total;
  final List products;
  final DateTime dateTime;

  OrderItem({
    this.id,
    this.total,
    this.products,
    this.dateTime,
  });
}

class Order with ChangeNotifier {
  List<OrderItem> items = [];

  List<OrderItem> get orders {
    return [...items];
  }

  void addItem(List<CartItem> cartProducts, double total) {
    items.insert(
        0,
        OrderItem(
            id: DateTime.now().toString(),
            dateTime: DateTime.now(),
            products: cartProducts,
            total: total));
    notifyListeners();
  }
}
