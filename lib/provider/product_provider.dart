import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_application/models/product_details.dart';
import 'package:shopping_application/widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductProvider with ChangeNotifier {
  List<ProductDetails> _items = [
    ProductDetails(
        id: "p1",
        description: "A nice shirt is a nice shirt",
        imageURL:
            "https://ae01.alicdn.com/kf/HTB1ipUCcBcHL1JjSZFBq6yiGXXaa/2020-Summer-Tee-Shrit-Men-T-Shirt-Round-Collar-Cotton-Mens-Casual-Slim-Fit-Raglan-Short.jpg_Q90.jpg_.webp",
        price: 49.00,
        productName: "Collarless T-Shrit Sample 1"),
    ProductDetails(
        id: "p2",
        description: "A nice shirt is a nice shirt",
        imageURL:
            "https://i.pinimg.com/originals/a7/da/d0/a7dad0ae034c73caa8ec2ebc5d5e2328.jpg",
        price: 49.00,
        productName: "Collarless T-Shrit  Sample 2"),
    ProductDetails(
        id: "p3",
        description: "A nice shirt is a nice shirt",
        imageURL:
            "https://images-na.ssl-images-amazon.com/images/I/714QqtwzRiL._UL1340_.jpg",
        price: 49.00,
        productName: "Collarless T-Shrit  Sample 3"),
    ProductDetails(
        id: "p4",
        description: "A nice shirt is a nice shirt",
        imageURL:
            "https://img5.cfcdn.club/90/75/902ca8145e40f8beb4d71287dedca675_350x350.jpg",
        price: 49.00,
        productName: "Collarless T-Shrit  Sample 4"),
    ProductDetails(
        id: "p5",
        description: "A nice shirt is a nice shirt",
        imageURL:
            "https://i.pinimg.com/originals/20/55/ce/2055cea29ba6f151d94963437c7ed0db.jpg",
        price: 49.00,
        productName: "Collarless T-Shrit  Sample 5"),
    ProductDetails(
        id: "p6",
        description: "A nice shirt is a nice shirt",
        imageURL:
            "https://5.imimg.com/data5/EH/WI/MY-13002137/mens-polo-t-shirt-500x500.jpg",
        price: 49.00,
        productName: "Collarless T-Shrit  Sample 6"),
  ];

  List<ProductDetails> get items {
    return _items;
  }

  ProductDetails getById(id) {
    return _items.firstWhere((prod) => id == prod.id);
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
