import 'package:flutter/material.dart';

class SignUpApp extends StatelessWidget {
  const SignUpApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              color: const Color(0XFF40513B),
              onPressed: () => Navigator.of(context).pop(),
              iconSize: 30)), //appBar
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'New Account',
                style: TextStyle(
                  color: Color(0XFF40513B),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ), //text style
              ), //text
              SizedBox(height: 40.0),
              Text(
                ' Name',
                style: TextStyle(
                  color: Color(0XFF40513B),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ), //text style
              ), //text
              SizedBox(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: BorderSide(color: Color(0XFF40513B)),
                    ), //outlineinputborder
                  ), //inputdecoration
                ), //textformfield
              ),
              SizedBox(height: 20.0),
              const Text(
                'Email',
                style: TextStyle(
                  color: Color(0XFF40513B),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ), //text style
              ), //text
              SizedBox(height: 5.0),
              SizedBox(
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: BorderSide(color: Color(0XFF40513B)),
                    ), //outlineinputborder
                  ), //inputdecoration
                ), //textformfield
              ), //sizedbox
              SizedBox(height: 20.0),
              const Text(
                'Password',
                style: TextStyle(
                  color: Color(0XFF40513B),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ), //text style
              ), //text
              SizedBox(height: 5.0),
              SizedBox(
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: BorderSide(color: Color(0XFF40513B)),
                    ), //outlineinputborder
                  ), //inputdecoration
                ), //textformfield
              ), //sizedbox
              SizedBox(height: 20.0),
              const Text(
                'Confirm Password',
                style: TextStyle(
                  color: Color(0XFF40513B),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ), //text style
              ), //text
              SizedBox(height: 5.0),
              SizedBox(
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: BorderSide(color: Color(0XFF40513B)),
                    ), //outlineinputborder
                  ), //inputdecoration
                ), //textformfield
              ), //sizedbox
              SizedBox(height: 20.0),
              SizedBox(
                height: 50.0,
                width: 300.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color(0XFF40513B))), //button style
                  onPressed: () {},
                  child: const Text(
                    "Creat account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ), //textstyle
                  ), //text
                ), //elevated button
              ), //sizedbox
            ], //cchildren
          ),
        ), //colunm
        //B sizedbox
      ), //column
    ); //padding
  } //widget
} //class
