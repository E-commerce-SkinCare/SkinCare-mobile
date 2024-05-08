// import 'package:flutter/material.dart';

// class SignUpApp extends StatelessWidget {
//   const SignUpApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           leading: IconButton(
//               icon: const Icon(Icons.arrow_back),
//               color: const Color(0XFF40513B),
//               onPressed: () => Navigator.of(context).pop(),
//               iconSize: 30)), //appBar
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 'New Account',
//                 style: TextStyle(
//                   color: Color(0XFF40513B),
//                   fontSize: 30.0,
//                   fontWeight: FontWeight.bold,
//                 ), //text style
//               ), //text
//               SizedBox(height: 40.0),
//               Text(
//                 ' Name',
//                 style: TextStyle(
//                   color: Color(0XFF40513B),
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ), //text style
//               ), //text
//               SizedBox(
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(25)),
//                       borderSide: BorderSide(color: Color(0XFF40513B)),
//                     ), //outlineinputborder
//                   ), //inputdecoration
//                 ), //textformfield
//               ),
//               SizedBox(height: 20.0),
//               const Text(
//                 'Email',
//                 style: TextStyle(
//                   color: Color(0XFF40513B),
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ), //text style
//               ), //text
//               SizedBox(height: 5.0),
//               SizedBox(
//                 child: TextFormField(
//                   keyboardType: TextInputType.emailAddress,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(25)),
//                       borderSide: BorderSide(color: Color(0XFF40513B)),
//                     ), //outlineinputborder
//                   ), //inputdecoration
//                 ), //textformfield
//               ), //sizedbox
//               SizedBox(height: 20.0),
//               const Text(
//                 'Password',
//                 style: TextStyle(
//                   color: Color(0XFF40513B),
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ), //text style
//               ), //text
//               SizedBox(height: 5.0),
//               SizedBox(
//                 child: TextFormField(
//                   keyboardType: TextInputType.visiblePassword,
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     suffixIcon: Icon(Icons.remove_red_eye),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(25)),
//                       borderSide: BorderSide(color: Color(0XFF40513B)),
//                     ), //outlineinputborder
//                   ), //inputdecoration
//                 ), //textformfield
//               ), //sizedbox
//               SizedBox(height: 20.0),
//               const Text(
//                 'Confirm Password',
//                 style: TextStyle(
//                   color: Color(0XFF40513B),
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ), //text style
//               ), //text
//               SizedBox(height: 5.0),
//               SizedBox(
//                 child: TextFormField(
//                   keyboardType: TextInputType.visiblePassword,
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     suffixIcon: Icon(Icons.remove_red_eye),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(25)),
//                       borderSide: BorderSide(color: Color(0XFF40513B)),
//                     ), //outlineinputborder
//                   ), //inputdecoration
//                 ), //textformfield
//               ), //sizedbox
//               SizedBox(height: 20.0),
//               SizedBox(
//                 height: 50.0,
//                 width: 300.0,
//                 child: ElevatedButton(
//                   style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all(
//                           const Color(0XFF40513B))), //button style
//                   onPressed: () {},
//                   child: const Text(
//                     "Creat account",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                     ), //textstyle
//                   ), //text
//                 ), //elevated button
//               ), //sizedbox
//             ], //cchildren
//           ),
//         ), //colunm
//         //B sizedbox
//       ), //column
//     ); //padding
//   } //widget
// } //class

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:second_project/components/crud.dart';
import 'package:second_project/components/signcontairner.dart';
import 'package:second_project/components/valid.dart';

class SignUpApp extends StatefulWidget {
  @override
  State<SignUpApp> createState() => _SignUpAppState();
}

class _SignUpAppState extends State<SignUpApp> {
  GlobalKey<FormState> formState = GlobalKey();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController Password = TextEditingController();

  Crud _crud = Crud();
  bool isloading = false;

  SignUpApp() async {
    if (formState.currentState!.validate()) {
      isloading = true;
      setState(() {});

      var response = await _crud.PostRequest(
          "https://student.valuxapps.com/api/login", {
        "username": username.text,
        "email": email.text,
        "password": Password.text
      });
      isloading = false;
      setState(() {});
      if (response['status'] == "success") {
        Navigator.of(context).pushNamedAndRemoveUntil("Home", (route) => false);
      } else {
        print("Sign Up Failed");
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
                            'UserName',
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
                                myController: username)),
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
                                await SignUpApp();
                                // Navigator.of(context).pushReplacementNamed("Home");
                                // (context,
                                //     MaterialPageRoute(builder: (context) => "SignUpApp"));
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
                ])),
    );
  }
}
