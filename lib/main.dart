// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:second_project/Screens/signup_screen.dart';
// import 'package:second_project/screens/home.dart';
// import 'package:second_project/screens/registration.dart';
// import 'package:second_project/screens/skin_care.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: "/",
//       routes: {
//         "/": (context) => SkinCare(),
//         "/signIn": (context) => SignIn(),
//         "Home": (context) => Home(),
//         "SignUpApp": (context) => SignUpApp()
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:second_project/screens/registration.dart';
import 'package:second_project/screens/home.dart';

import 'package:second_project/screens/signup_screen.dart';
import 'package:second_project/screens/skin_care.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => SkinCare(), // قم بتغيير الصفحة الرئيسية إلى SignIn()
        "/home": (context) => Home(), // استبدل "Home" بـ "/home" لتتناسب مع المسار الصحيح
        "/signup": (context) => SignUpApp(), // استبدل "SignUpApp" بـ "/signup" لتتناسب مع المسار الصحيح
      },
    );
  }
}
