import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textformSign extends StatelessWidget {
  final TextEditingController myController;
  final String? Function(String?)valid;
  const textformSign({super.key, required this.myController,required this.valid});
  

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextFormField(
          validator: valid,
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
    )
    );
  }
}
