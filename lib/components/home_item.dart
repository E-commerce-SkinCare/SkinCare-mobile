// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:second_project/models/product.dart';
// // import 'package:second_project/components/item.dart';

// class Item extends StatelessWidget {
//   final Product product;

//   const Item({required this.product});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: ListTile(
//         leading: CircleAvatar(
//           backgroundImage: AssetImage(product.image),
//         ),
//         title: Text(product.name),
//         subtitle: Text(product.price),
//         trailing: IconButton(
//           icon: Icon(Icons.add),
//           onPressed: () {
//             onAddToCart();
//           },
//         ),
//       ),
//     );
//   }
// }
