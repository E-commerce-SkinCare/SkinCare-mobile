import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:second_project/components/api/endpoints.dart';
import 'package:second_project/components/cart_item.dart';
import 'package:http/http.dart' as http;
import 'package:second_project/components/constants/constants.dart';

import 'package:second_project/models/product.dart';
import 'package:second_project/screens/home.dart';
import 'package:second_project/screens/profile.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});
  Future<List<Product>> fetchProducts() async {
    final response =
        await http.get(Uri.parse('${EndPoints.baseUrl}cart/show/${userId}'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body)['data'];
      List<Product> products = [];
      data.forEach((productData) {
        products.add(Product(
          id: productData['id'],
          name: productData['name'],
          description: productData['description'],
          image: productData['img'],
          price: productData['price'],
        ));
      });
      return products;
    } else {
      throw Exception('Failed to load products');
    }
  }

  // final one = const Product(
  //     image: '4444.jpg', name: 'name of product', price: 'price : X\$');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              Spacer(
                flex: 1,
              ),
              IconButton(
                icon: Image.asset('ca.png'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Home();
                  })));
                },
              ),
              Spacer(
                flex: 1,
              ),
              IconButton(
                icon: Image.asset('hh.png'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Cart();
                  })));
                },
              ),
              Spacer(
                flex: 1,
              ),
              IconButton(
                  icon: Image.asset('pr.png'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AccountProfile()));
                  }),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
        body: FutureBuilder(
          future: fetchProducts(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Product>> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return CartItem(
                    product: snapshot.data![index],
                    onRemoveFromCart: () {},
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('${snapshot.error}'),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}


// import 'dart:js';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:second_project/components/api/endpoints.dart';
// import 'package:second_project/components/cart_item.dart';
// import 'package:second_project/models/product.dart';

// class Cart extends StatelessWidget {
//   const Cart({Key? key}) : super(key: key);

//   // final List<Product> products = const [
//   //   Product(
//   //       image: '4444.jpg',
//   //       name: 'name of product',
//   //       price: 'price : X\$',
//   //       id: 1,
//   //       description: ""),
//   // ];

//   // Future<void> removeFromCart(int productId) async {
//   //   var url = Uri.parse('${EndPoints.baseUrl}cart/');
//   //   var userId = 'user_id';

//   //   var response = await http.post(
//   //     url,
//   //     body: {
//   //       'product_id': productId.toString(),
//   //       'user_id': userId.toString(),
//   //     },
//   //   );

//   //   if (response.statusCode == 200) {
//   //     print("item removed");
//   //   } else {
//   //     print("failed to remove item ");
//   //   }
//   // }

//     Future<List<Product>> fetchCartProducts() async {
//     final response = await http.get(Uri.parse('${EndPoints.baseUrl}products'));

//     if (response.statusCode == 200) {
//       List<dynamic> data = json.decode(response.body)['data'];
//       List<Product> products = [];
//       data.forEach((productData) {
//         products.add(Product(
//           id: productData['id'],
//           name: productData['name'],
//           description: productData['description'],
//           image: productData['img'],
//           price: productData['price'],
//         ));
//       });
//       return products;
//     } else {
//       throw Exception('Failed to load products');
//     }
//   }



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Cart')),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           return CartItem(
//             product: products[index],
//             onRemoveFromCart: () {
//               // removeFromCart(products[index].id);
//             },
//           );
//         },
//       ),
//     );
//   }
// }
