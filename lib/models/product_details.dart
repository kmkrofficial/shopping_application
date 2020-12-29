import 'package:flutter/foundation.dart';

class ProductDetails {
  final String id;
  final String productName;
  final String description;
  final double price;
  final String imageURL;
  final bool isFavorite;

  ProductDetails(
      {@required this.id,
      @required this.description,
      @required this.imageURL,
      this.isFavorite = false,
      @required this.price,
      @required this.productName});
}
