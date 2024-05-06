import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_project/components/visaitem.dart';

class paycash extends StatelessWidget {
  const paycash({super.key});

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
      Padding(
        padding: const EdgeInsets.only(top: 140, left: 15, bottom: 50),
        child: Text(
          'Payment on receipt',
          style: TextStyle(
            color: Color(0xff40513B),
            fontFamily: 'Lexend',
            fontSize: 25,
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
