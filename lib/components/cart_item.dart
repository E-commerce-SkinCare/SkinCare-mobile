// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:second_project/models/product.dart';

// class CartItem extends StatefulWidget {
//   CartItem({required this.product});
//   final Product product;

//   @override
//   State<CartItem> createState() => _CartItemState();
// }

// class _CartItemState extends State<CartItem> {
//   int PNumper = 0;
//   void addproduct() {}

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // width: 500,
//       // height: 300,
//       child: Padding(
//         padding: const EdgeInsets.only(bottom: 10, left: 28),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 185,
//               width: 174,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(17),
//                   border: Border.all(color: Color(0xff9DC08B), width: 6)),
//               clipBehavior: Clip.hardEdge,
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(12),
//                 child: Image(
//                   height: 185,
//                   width: 174,
//                   fit: BoxFit.cover,
//                   image: AssetImage(widget.product.image),
//                 ),
//               ),
//             ),

//             // Container(
//             //   margin: EdgeInsets.all(50),
//             //   height: 990,
//             //   width: 254,
//             //   color: Color(0xff9DC08B),
//             //   child: Image(
//             //     image: AssetImage('4444.jpg'),
//             //     height: 165,
//             //     width: 174,
//             //     fit: BoxFit.cover,
//             //     // height: 250,
//             //   ),
//             // ),
//             Expanded(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 15, top: 60),
//                     child: Text(
//                       widget.product.name,
//                       style: TextStyle(
//                           fontFamily: 'Lexend',
//                           fontWeight: FontWeight.w600,
//                           fontSize: 18),
//                     ),
//                   ),
//                   Row(
//                     children: [
//                       PNumper >= 5
//                           ? IconButton(
//                               icon: Image.asset('m2.png'),
//                               onPressed: () {
//                                 setState(() {});
//                               })
//                           : IconButton(
//                               icon: Image.asset('p1.png'),
//                               onPressed: () {
//                                 setState(() {
//                                   PNumper++;
//                                 });
//                               }),
//                       Text(
//                         '$PNumper',
//                         style: const TextStyle(
//                             fontWeight: FontWeight.w800,
//                             color: Color(0xff40513B)),
//                       ),
//                       PNumper == 1
//                           ? IconButton(
//                               icon: Image.asset('m1.png'),
//                               onPressed: () {
//                                 setState(() {});
//                               })
//                           : IconButton(
//                               icon: Image.asset('p2.png'),
//                               onPressed: () {
//                                 setState(() {
//                                   if (PNumper != 0) {
//                                     PNumper--;
//                                   }
//                                 });
//                               })
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   List<CartItem> getList(List<Product> products) {
//     List<CartItem> itemList = [];
//     // for(int i=0;i <numbers.length;i++)
//     for (int i = 0; i < 20; i++) {
//       itemList.add(CartItem(product: products[0]));
//     }
//     return itemList;
//   }
// }
import 'package:flutter/material.dart';
import 'package:second_project/models/product.dart';

class CartItem extends StatelessWidget {
  final Product product;
  final VoidCallback onRemoveFromCart;


  const CartItem({
    Key? key,
    required this.product,
    required this.onRemoveFromCart,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            child: Image.asset(
              product.image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  product.price,
                  style: TextStyle(color: Colors.green),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: onRemoveFromCart,
                  child: Text('Remove from Cart'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
