import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_project/Screens/signup_screen.dart';
import 'package:second_project/screens/home.dart';
import 'package:second_project/screens/skin_care.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => SkinCare(),
        "/signIn": (context) => SignIn(),
        "Home": (context) => Home()
      },
    );
  }
}
