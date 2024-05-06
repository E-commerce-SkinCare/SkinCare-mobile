import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_project/screens/home.dart';

class SignIn extends StatelessWidget {
  const SignIn();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 220, left: 15),
            child: Text(
              'Sign in',
              style: TextStyle(
                color: Color(0xff40513B),
                fontFamily: 'Lexend',
                fontSize: 25,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, bottom: 10, left: 20),
            child: Text(
              'Email',
              style: TextStyle(
                  color: Color(0xff40513B), fontFamily: 'Lexend', fontSize: 16),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
            ),
            height: 50,
            width: 325,
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
            child: Text(
              'Password',
              style: TextStyle(
                  color: Color(0xff40513B), fontFamily: 'Lexend', fontSize: 16),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
            ),
            height: 50,
            width: 325,
            child: TextFormField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
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
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 122, top: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Color(0xff40513B),
              ),
              height: 40,
              width: 100,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Sign in',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Lexend',
                        fontSize: 16),
                  ),
                ),
              ))
        ],
      )),
    );
  }
}
