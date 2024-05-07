import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_project/Screens/signup_screen.dart';
import 'package:second_project/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/signIn",
      routes: {
        "/": (context) => SignIn(),
        "/signIn": (context) => SignIn(),
        "Home":(context) => Home()
      },
    );
  }
}
