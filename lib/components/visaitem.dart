import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class visaItem extends StatelessWidget {
  const visaItem({required this.hintText, required this.icon});
  final String? hintText;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
      ),
      height: 50,
      width: 430,
      child: TextFormField(
        style: const TextStyle(color: Color(0xff609966)),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xff609966)),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              child: Image.asset(icon),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Color(0xff40513B),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Color(0xff40513B),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xff40513B),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
