import 'package:flutter/material.dart';

class ShowProduct extends StatelessWidget
{
const ShowProduct({super.key});
@override
Widget build(BuildContext context)
 {
    return  Scaffold(
    body: Padding(
        padding:const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
          children: [
          const SizedBox(height:40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Container(
                width: 200,
                height: 240,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0XFF9DC08B), width: 6),
                  borderRadius:  const BorderRadius.all(Radius.circular(17))
                  ),
                  clipBehavior:Clip.hardEdge,
                  child:ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: const Image(
                        height: 200,
                        width: 240,
                        fit: BoxFit.cover,
                        image: AssetImage("imeges/photo_٢٠٢٤-٠٣-١٧_١٦-١٤-١١.jpg")
                    ),
                  ),
                ),
              ],
            ),
              const SizedBox(height:20),
               const Row(
                children: [
               Text("name of the product",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize:20.0,
                  fontWeight:FontWeight.bold,
                  ),
                ),  
              ],
            ),
            const Text(
              "price : 100\$",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize:18.0,
                  fontWeight:FontWeight.bold,
              ),
            ),
          const SizedBox(height:50),
          const Text(
              "Description",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize:19.0,
                  fontWeight:FontWeight.bold,
              ),
            ),
            const SizedBox(height:10),
            const Text(
              "Skin care is practices to maintain skin\n integrity,enhance and improve\n appearance, as well as reduce skin \ndiseases and aging. Skin care can include\n nutrition, avoiding excessive sun exposure,\n and appropriate use of skin moisturizers.\n Practices that maintain ",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize:15.0,
                  fontWeight:FontWeight.bold,
              ),
            ),
            Row(
          mainAxisAlignment: MainAxisAlignment.end, // Align button to the right
          children: [ 
           SizedBox(
                height:45.0,
                width:160.0,
              child:ElevatedButton.icon(
                icon: const Icon(Icons.shopping_cart,color: Color(0XFF40513B)),
                label: const Text(
                  'Add to Cart',
                  style: TextStyle(
                    color: Color(0XFF40513B),
                    fontSize:17,
                  ),
                  ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17.0),
                  side: const BorderSide(color: Color(0XFF40513B),width: 2),
                    )
                  ),//shape
                ),
                onPressed :(){},
                  ),
                ),
              ],
            ),
          ],
        ),
       )
     )
    );
  }
}