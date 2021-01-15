import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../providers/order.dart' as ordItem;

class OrderItem extends StatefulWidget {
  final ordItem.OrderItem ord;

  OrderItem({@required this.ord});

  @override
  _OrderItemState createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text("\$${widget.ord.total}"),
            subtitle: Text(
              DateFormat('dd/MM/yyyy hh:mm:ss').format(widget.ord.dateTime),
            ),
            trailing: IconButton(
              icon: Icon(
                _expanded ? Icons.expand_less : Icons.expand_more,
              ),
              onPressed: () {
                setState(() {
                  _expanded = !_expanded;
                });
              },
            ),
          ),
          if (_expanded)
            Container(
              height: min(widget.ord.products.length * 20.0 + 10, 250),
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ListView(
                children: widget.ord.products
                    .map((e) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              e.title,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text("\$${e.pricing} * ${e.quantity}"),
                          ],
                        ))
                    .toList(),
              ),
            ),
        ],
      ),
    );
  }
}
