import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:second_project/components/api/endpoints.dart';
import 'package:second_project/components/constants/constants.dart';
import 'package:second_project/components/crud.dart';
import 'package:second_project/components/valid.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> formState = GlobalKey();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  // String userId = '';

  Crud _crud = Crud();
  bool isLoading = false;

  Future<void> login(String email, String password) async {
    if (formState.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });

      var response = await _crud.postRequest(
          "${EndPoints.baseUrl}login", {"email": email, "password": password});

      setState(() {
        isLoading = false;
      });

      if (response["status"] == "success") {
        log(response.toString());
        userId = response['user']['id'].toString();
        log(userId);
        Navigator.of(context).pushNamed(
          "/home",
        );
        print("YesNoo");
      } else {
        print(response);
        print(response["status"]);
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text(
                  "Failed to sign in. Please check your email and password."),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("OK"),
                ),
              ],
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
        titleTextStyle: TextStyle(color: Color(0xff40513B), fontSize: 30),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 100, left: 10, right: 20),
                child: Form(
                  key: formState,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: email,
                        validator: (value) {
                          return validinput(value!, 3, 100);
                        },
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Color(0xff40513B)),
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
                      SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        controller: password,
                        validator: (value) {
                          return validinput(value!, 3, 100);
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Color(0xff40513B)),
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
                      SizedBox(height: 20),
                      Container(
                          margin: EdgeInsets.only(left: 122, top: 50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: Color(0xff40513B),
                          ),
                          height: 40,
                          width: 100,
                          child: MaterialButton(
                              onPressed: () async {
                                await login(email.text, password.text);
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
                              )))
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
