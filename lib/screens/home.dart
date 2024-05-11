// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/widgets.dart';
// // import 'package:second_project/components/item.dart';
// // import 'package:second_project/models/product.dart';
// // import 'package:second_project/screens/cart.dart';
// // import 'package:second_project/screens/profile.dart';

// // class Home extends StatefulWidget {
// //   const Home({super.key});

// //   @override
// //   State<Home> createState() => _HomeState();
// // }

// // class _HomeState extends State<Home> {
// //   final List<Product> products = const [
// //     Product(image: '4444.jpg', name: 'name of product', price: 'price : X\$'),
// //   ];

// //   final one = const Product(
// //       image: '4444.jpg', name: 'name of product', price: 'price : X\$');

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: Scaffold(
// //         bottomNavigationBar: Padding(
// //           padding: const EdgeInsets.only(top: 20),
// //           child: Row(
// //             children: [
// //               Spacer(
// //                 flex: 1,
// //               ),
// //               IconButton(
// //                 icon: Image.asset('ca.png'),
// //                 onPressed: () {
// //                   Navigator.push(context,
// //                       MaterialPageRoute(builder: ((context) {
// //                     return Home();
// //                   })));
// //                 },
// //               ),
// //               Spacer(
// //                 flex: 1,
// //               ),
// //               IconButton(
// //                 icon: Image.asset('hh.png'),
// //                 onPressed: () {
// //                   Navigator.push(context,
// //                       MaterialPageRoute(builder: ((context) {
// //                     return cart();
// //                   })));
// //                 },
// //               ),
// //               Spacer(
// //                 flex: 1,
// //               ),
// //               IconButton(
// //                   icon: Image.asset('pr.png'),
// //                   onPressed: () {
// //                     Navigator.push(
// //                         context,
// //                         MaterialPageRoute(
// //                             builder: (context) => AccountProfile()));
// //                   }),
// //               Spacer(
// //                 flex: 1,
// //               ),
// //             ],
// //           ),
// //         ),
// //         body: ListView(children: [
// //           ListView.builder(
// //             shrinkWrap: true,
// //             physics: ScrollPhysics(),
// //             itemCount: 20,
// //             itemBuilder: (context, index) {
// //               return Item(product: products[0]);
// //             },
// //           ),
// //         ]),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:second_project/components/item.dart';
// import 'package:second_project/models/product.dart';
// import 'package:second_project/screens/cart.dart';
// import 'package:second_project/screens/profile.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   final List<Product> products = const [
//     Product(image: '4444.jpg', name: 'name of product', price: 'price : X\$'),
//   ];

//   final one = const Product(
//       image: '4444.jpg', name: 'name of product', price: 'price : X\$');

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         bottomNavigationBar: Padding(
//           padding: const EdgeInsets.only(top: 20),
//           child: Row(
//             children: [
//               Spacer(
//                 flex: 1,
//               ),
//               IconButton(
//                 icon: Image.asset('ca.png'),
//                 onPressed: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: ((context) {
//                     return Home();
//                   })));
//                 },
//               ),
//               Spacer(
//                 flex: 1,
//               ),
//               IconButton(
//                 icon: Image.asset('hh.png'),
//                 onPressed: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: ((context) {
//                     return cart();
//                   })));
//                 },
//               ),
//               Spacer(
//                 flex: 1,
//               ),
//               IconButton(
//                   icon: Image.asset('pr.png'),
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => AccountProfile()));
//                   }),
//               Spacer(
//                 flex: 1,
//               ),
//             ],
//           ),
//         ),
//         body: ListView(children: [
//           ListView.builder(
//             shrinkWrap: true,
//             physics: ScrollPhysics(),
//             itemCount: 20,
//             itemBuilder: (context, index) {
//               return Item(product: products[0]);
//             },
//           ),
//         ]),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:second_project/components/item.dart';
import 'package:second_project/models/product.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final List<Product> products = const [
    Product(image: '4444.jpg', name: 'name of product', price: 'price : X\$'),
  ];

  Future<void> addToCart(int productId, int quantity) async {
    var url = Uri.parse('URL_API/add_to_cart');
    var userId = 'user_id';

    var response = await http.post(
      url,
      body: {
        'product_id': productId.toString(),
        'user_id': userId.toString(),
        'quantity': quantity.toString(),
      },
    );

    if (response.statusCode == 200) {
      // تمت إضافة المنتج بنجاح إلى السلة
      // يمكنك هنا إظهار رسالة نجاح أو تحديث واجهة المستخدم
    } else {
      // فشلت عملية إضافة المنتج إلى السلة
      // يمكنك هنا إظهار رسالة خطأ للمستخدم
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Item(
            product: products[index],
            onAddToCart: () {
              addToCart(products[index].id, 1); // تحديد الكمية هنا
            },
          );
        },
      ),
    );
  }
}
