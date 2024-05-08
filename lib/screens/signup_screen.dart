import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:second_project/components/crud.dart';
import 'package:second_project/components/signcontairner.dart';
import 'package:second_project/components/valid.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> formState = GlobalKey();
  TextEditingController email = TextEditingController();
  TextEditingController Password = TextEditingController();

  Crud _crud = Crud();
  bool isloading = false;

  SignIn() async {
    if (formState.currentState!.validate()) {
      isloading = true;
      setState(() {});

      var response = await _crud.PostRequest(
          "https://student.valuxapps.com/api/login",
          {"email": email.text, "password": Password.text});
      isloading = false;
      setState(() {});
      if (response["status"] == "success") {
        Navigator.of(context).pushNamedAndRemoveUntil("Home", (route) => false);
      } else {
        AlertDialog;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: isloading == true
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView(children: [
                  Form(
                    key: formState,
                    child: SingleChildScrollView(
                      child: Column(
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
                            padding:
                                EdgeInsets.only(top: 50, bottom: 10, left: 20),
                            child: Text(
                              'Email',
                              style: TextStyle(
                                  color: Color(0xff40513B),
                                  fontFamily: 'Lexend',
                                  fontSize: 16),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                              ),
                              height: 50,
                              width: 325,
                              child: textformSign(
                                  valid: (val) {
                                    return validinput(val!, 3, 100);
                                  },
                                  myController: email)),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 20),
                            child: Text(
                              'Password',
                              style: TextStyle(
                                  color: Color(0xff40513B),
                                  fontFamily: 'Lexend',
                                  fontSize: 16),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                              ),
                              height: 50,
                              width: 325,
                              child: textformSign(
                                  valid: (val) {
                                    return validinput(val!, 3, 100);
                                  },
                                  myController: Password)),
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
                                  await SignIn();
                                  // Navigator.of(context).pushReplacementNamed("Home");
                                  // (context,
                                  //     MaterialPageRoute(builder: (context) => "signIn"));
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
                      ),
                    ),
                  ),
                ])),
    );
  }
}
