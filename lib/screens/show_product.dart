// import 'package:flutter/material.dart';

// class ShowProduct extends StatelessWidget
// {
// const ShowProduct({super.key});
// @override
// Widget build(BuildContext context)
// {
//     return  Scaffold(
//     body: Padding(
//         padding:const EdgeInsets.all(20.0),
//         child: Center(
//           child: Column(
//               crossAxisAlignment:CrossAxisAlignment.start,
//           children: [
//           const SizedBox(height:40),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//             Container(
//                 width: 200,
//                 height: 240,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: const Color(0XFF9DC08B), width: 6),
//                   borderRadius:  const BorderRadius.all(Radius.circular(17))
//                   ),
//                   clipBehavior:Clip.hardEdge,
//                   child:ClipRRect(
//                       borderRadius: BorderRadius.circular(12),
//                       child: const Image(
//                         height: 200,
//                         width: 240,
//                         fit: BoxFit.cover,
//                         image: AssetImage("imeges/photo_٢٠٢٤-٠٣-١٧_١٦-١٤-١١.jpg")
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//               const SizedBox(height:20),
//               const Row(
//                 children: [
//               Text("name of the product",
//               style: TextStyle(
//                   color: Colors.black87,
//                   fontSize:20.0,
//                   fontWeight:FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             const Text(
//               "price : 100\$",
//               style: TextStyle(
//                   color: Colors.black87,
//                   fontSize:18.0,
//                   fontWeight:FontWeight.bold,
//               ),
//             ),
//           const SizedBox(height:50),
//           const Text(
//               "Description",
//               style: TextStyle(
//                   color: Colors.black87,
//                   fontSize:19.0,
//                   fontWeight:FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height:10),
//             const Text(
//               "Skin care is practices to maintain skin\n integrity,enhance and improve\n appearance, as well as reduce skin \ndiseases and aging. Skin care can include\n nutrition, avoiding excessive sun exposure,\n and appropriate use of skin moisturizers.\n Practices that maintain ",
//               style: TextStyle(
//                   color: Colors.black87,
//                   fontSize:15.0,
//                   fontWeight:FontWeight.bold,
//               ),
//             ),
//             Row(
//           mainAxisAlignment: MainAxisAlignment.end, // Align button to the right
//           children: [
//           SizedBox(
//                 height:45.0,
//                 width:160.0,
//               child:ElevatedButton.icon(
//                 icon: const Icon(Icons.shopping_cart,color: Color(0XFF40513B)),
//                 label: const Text(
//                   'Add to Cart',
//                   style: TextStyle(
//                     color: Color(0XFF40513B),
//                     fontSize:17,
//                   ),
//                   ),
//                 style: ButtonStyle(
//                   backgroundColor: MaterialStateProperty.all(Colors.white),
//                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                   RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(17.0),
//                   side: const BorderSide(color: Color(0XFF40513B),width: 2),
//                     )
//                   ),//shape
//                 ),
//                 onPressed :(){},
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       )
//     )
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:second_project/components/cart_api.dart';
import 'dart:convert';

import 'package:second_project/components/item.dart';

class ShowProduct extends StatefulWidget {
  const ShowProduct({super.key});

  @override
  State<ShowProduct> createState() => _ShowProductState();
}

class _ShowProductState extends State<ShowProduct> {
  late Future<Map<String, dynamic>> _productDetails;

  @override
  void initState() {
    super.initState();
    _productDetails = fetchProductDetails();
  }

  Future<Map<String, dynamic>> fetchProductDetails() async {
    final response = await http
        .get(Uri.parse('https://example.com/api/products/product_id'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load product details');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: FutureBuilder(
        future: _productDetails,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final product = snapshot.data;
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          height: 240,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0XFF9DC08B), width: 6),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(17)),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              product![
                                  'image'], // استبدال هنا برابط الصورة من الاستجابة
                              height: 200,
                              width: 240,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          product![
                              'name'], // استبدال هنا باسم المنتج من الاستجابة
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'price : ${product['price']}', // استبدال هنا بسعر المنتج من الاستجابة
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 50),
                    const Text(
                      'Description',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      product![
                          'description'], // استبدال هنا بوصف المنتج من الاستجابة
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 45.0,
                          width: 160.0,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              // يمكنك هنا إضافة رمز لإضافة المنتج إلى عربة التسوق
                              AddToCartRequest(
                                userId: 1,
                                productId: product[''],
                                quantity: 1,
                              );
                            },
                            icon: const Icon(Icons.shopping_cart,
                                color: Color(0XFF40513B)),
                            label: const Text(
                              'Add to Cart',
                              style: TextStyle(
                                color: Color(0XFF40513B),
                                fontSize: 17,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17.0),
                                  side: const BorderSide(
                                      color: Color(0XFF40513B), width: 2),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
