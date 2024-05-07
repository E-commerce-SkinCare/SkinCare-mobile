import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:second_project/components/cart_item.dart';

import 'package:second_project/models/product.dart';
import 'package:second_project/screens/home.dart';
import 'package:second_project/screens/profile.dart';

class cart extends StatelessWidget {
  const cart({super.key});

  final List<Product> products = const [
    Product(image: '4444.jpg', name: 'name of product', price: 'price : X\$'),
  ];
  final one = const Product(
      image: '4444.jpg', name: 'name of product', price: 'price : X\$');
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
                    return cart();
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
        body: ListView(children: [
          ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: 20,
            itemBuilder: (context, index) {
              return CartItem(product: products[0]);
            },
          ),
        ]),
      ),
    );
  }
}
