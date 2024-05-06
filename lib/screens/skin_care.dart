import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:second_project/screens/signup_screen.dart';

class SkinCare extends StatelessWidget {
  const SkinCare();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff40513B),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('102.png'),
              height: 300,
            ),
            Text(
              'Skin Care',
              style: TextStyle(
                  color: Color.fromARGB(255, 207, 159, 13),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Lexend',
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 92,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  minWidth: 20,
                  height: 45,
                  color: Color(0xff40513B),
                  onPressed: () {},
                  shape: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      'New Account',
                      style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  height: 45,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  shape: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 15,
                          color: Color(0xff40513B)),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
