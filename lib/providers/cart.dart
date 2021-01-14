import 'package:flutter/cupertino.dart';

class CartItem {
  String id;
  String title;
  int quantity;
  double pricing;

  CartItem({
    @required this.id,
    @required this.title,
    @required this.quantity,
    @required this.pricing,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};
  double total = 0;

  Map<String, CartItem> get items {
    return {..._items};
  }

  double get totalPrice {
    _items.forEach((key, value) {
      total += value.quantity * value.pricing;
    });
    return total;
  }

  int get getCartCount {
    int quantity = 0;
    _items.forEach((key, value) {
      quantity += value.quantity;
    });
    return quantity;
  }

  void addItem(String productId, String title, double pricing) {
    if (_items.containsKey(productId)) {
      _items.update(
        productId,
        (existingItem) => CartItem(
            id: existingItem.id,
            title: existingItem.title,
            quantity: existingItem.quantity + 1,
            pricing: existingItem.pricing),
      );
    } else {
      _items.putIfAbsent(
        productId,
        () => CartItem(
            id: DateTime.now().toString(),
            title: title,
            quantity: 1,
            pricing: pricing),
      );
    }
    notifyListeners();
  }
}
