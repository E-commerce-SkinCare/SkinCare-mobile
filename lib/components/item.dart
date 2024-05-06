import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_project/models/product.dart';

class Item extends StatelessWidget {
  const Item({required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 500,
      // height: 300,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 28),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 185,
              width: 174,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  border: Border.all(color: Color(0xff9DC08B), width: 6)),
              clipBehavior: Clip.hardEdge,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  height: 185,
                  width: 174,
                  fit: BoxFit.cover,
                  image: AssetImage(product.image),
                ),
              ),
            ),

            // Container(
            //   margin: EdgeInsets.all(50),
            //   height: 990,
            //   width: 254,
            //   color: Color(0xff9DC08B),
            //   child: Image(
            //     image: AssetImage('4444.jpg'),
            //     height: 165,
            //     width: 174,
            //     fit: BoxFit.cover,
            //     // height: 250,
            //   ),
            // ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 60),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        product.name,
                        maxLines: 2,
                        style: TextStyle(
                            fontFamily: 'Lexend',
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      product.price,
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 250),
                    child: IconButton(
                      icon: Image.asset('by.png'),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Item> getList(List<Product> products) {
  List<Item> itemList = [];
  // for(int i=0;i <numbers.length;i++)
  for (int i = 0; i < 20; i++) {
    itemList.add(Item(product: products[0]));
  }
  return itemList;
}
