import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_project/components/visaitem.dart';

class payvisa extends StatelessWidget {
  const payvisa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 0, top: 30),
            child: MaterialButton(
              minWidth: 230,
              height: 50,
              color: Color(0xff40513B),
              onPressed: () {},
              shape: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                borderSide: BorderSide(color: Color(0xff40513B), width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Cash',
                  style: TextStyle(
                      fontFamily: 'Lexend', fontSize: 15, color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0, right: 0, top: 30),
            child: MaterialButton(
              minWidth: 230,
              height: 50,
              color: Colors.white,
              onPressed: () {},
              shape: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                borderSide: BorderSide(color: Color(0xff40513B), width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: const Text(
                  'Visa card',
                  style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 15,
                      color: Color(0xff40513B)),
                ),
              ),
            ),
          )
        ],
      ),
      // SizedBox(
      //   height: 20,
      // ),
      Padding(
        padding: const EdgeInsets.only(top: 40, left: 15, bottom: 20),
        child: Text(
          'Add a card',
          style: TextStyle(
            color: Color(0xff40513B),
            fontFamily: 'Lexend',
            fontSize: 25,
          ),
        ),
      ),
      // Container(
      //   margin: EdgeInsets.only(
      //     left: 10,
      //     bottom: 80,
      //   ),
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(17),
      //   ),
      //   height: 1,
      //   width: 230,
      //   child: Column(
      //     children: [
      //       SizedBox(
      //           height: 0.1,
      //           width: 0.1,
      //           child: TextFormField(
      //             style: TextStyle(color: Color(0xff609966)),
      //             initialValue: "visaa",
      //             decoration: InputDecoration(
      //               enabledBorder: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(20),
      //                 borderSide: BorderSide(
      //                   color: Color(0xff40513B),
      //                 ),
      //               ),
      //               focusedBorder: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(20),
      //                 borderSide: BorderSide(
      //                   color: Color(0xff40513B),
      //                 ),
      //               ),
      //               border: OutlineInputBorder(
      //                 borderSide: BorderSide(
      //                   color: Color(0xff40513B),
      //                 ),
      //                 borderRadius: BorderRadius.circular(20),
      //               ),
      //             ),
      //           )),
      //       Row(
      //         children: [
      //           SizedBox(
      //             height: 0.1,
      //             width: 0.1,
      //             child: TextFormField(
      //               style: TextStyle(color: Color(0xff609966)),
      //               initialValue: "visaa",
      //               decoration: InputDecoration(
      //                 enabledBorder: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(20),
      //                   borderSide: BorderSide(
      //                     color: Color(0xff40513B),
      //                   ),
      //                 ),
      //                 focusedBorder: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(20),
      //                   borderSide: BorderSide(
      //                     color: Color(0xff40513B),
      //                   ),
      //                 ),
      //                 border: OutlineInputBorder(
      //                   borderSide: BorderSide(
      //                     color: Color(0xff40513B),
      //                   ),
      //                   borderRadius: BorderRadius.circular(20),
      //                 ),
      //               ),
      //             ),
      //           )
      //         ],
      //       )
      //     ],
      //   ),
      // ),
      Container(
        margin: EdgeInsets.only(left: 10, bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
        ),
        height: 50,
        width: 430,
        child: TextFormField(
          style: TextStyle(color: Color(0xff609966)),
          decoration: InputDecoration(
            hintText: "Name on card",
            hintStyle: TextStyle(color: Color(0xff609966)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Color(0xff40513B),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Color(0xff40513B),
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff40513B),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),

      visaItem(hintText: "Your governorate", icon: "45 (1).png"),
      visaItem(hintText: "Your address", icon: "lo.png"),
      visaItem(hintText: "Phone number", icon: "ph.png"),
      Container(
          margin: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: Color(0xff40513B),
          ),
          height: 40,
          width: 180,
          child: MaterialButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textAlign: TextAlign.center,
                'Done',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Lexend', fontSize: 16),
              ),
            ),
          ))
    ]));
  }
}
