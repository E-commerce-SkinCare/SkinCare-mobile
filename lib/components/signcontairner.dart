import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textformSign extends StatelessWidget {
  final TextEditingController myController;
  const textformSign({super.key, required this.myController});
  

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextFormField(
      decoration: InputDecoration(
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
    ));
  }
}
