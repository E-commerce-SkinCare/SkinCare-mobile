import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_project/models/product.dart';

class Item extends StatelessWidget {
  final Product product;
  final Function() onAddToCart;

  const Item({required this.product, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(product.image),
        ),
        title: Text(product.name),
        subtitle: Text(product.price),
        trailing: IconButton(
          icon: Icon(Icons.add),
          onPressed: onAddToCart,
        ),
      ),
    );
  }
}
