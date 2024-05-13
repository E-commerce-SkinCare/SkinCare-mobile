// // // import 'package:flutter/material.dart';

// // // class SignUpApp extends StatelessWidget {
// // //   const SignUpApp({super.key});
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //           leading: IconButton(
// // //               icon: const Icon(Icons.arrow_back),
// // //               color: const Color(0XFF40513B),
// // //               onPressed: () => Navigator.of(context).pop(),
// // //               iconSize: 30)), //appBar
// // //       body: Padding(
// // //         padding: const EdgeInsets.all(20.0),
// // //         child: SingleChildScrollView(
// // //           child: Column(
// // //             crossAxisAlignment: CrossAxisAlignment.start,
// // //             children: [
// // //               const Text(
// // //                 'New Account',
// // //                 style: TextStyle(
// // //                   color: Color(0XFF40513B),
// // //                   fontSize: 30.0,
// // //                   fontWeight: FontWeight.bold,
// // //                 ), //text style
// // //               ), //text
// // //               SizedBox(height: 40.0),
// // //               Text(
// // //                 ' Name',
// // //                 style: TextStyle(
// // //                   color: Color(0XFF40513B),
// // //                   fontSize: 20.0,
// // //                   fontWeight: FontWeight.bold,
// // //                 ), //text style
// // //               ), //text
// // //               SizedBox(
// // //                 child: TextFormField(
// // //                   decoration: InputDecoration(
// // //                     border: OutlineInputBorder(
// // //                       borderRadius: BorderRadius.all(Radius.circular(25)),
// // //                       borderSide: BorderSide(color: Color(0XFF40513B)),
// // //                     ), //outlineinputborder
// // //                   ), //inputdecoration
// // //                 ), //textformfield
// // //               ),
// // //               SizedBox(height: 20.0),
// // //               const Text(
// // //                 'Email',
// // //                 style: TextStyle(
// // //                   color: Color(0XFF40513B),
// // //                   fontSize: 20.0,
// // //                   fontWeight: FontWeight.bold,
// // //                 ), //text style
// // //               ), //text
// // //               SizedBox(height: 5.0),
// // //               SizedBox(
// // //                 child: TextFormField(
// // //                   keyboardType: TextInputType.emailAddress,
// // //                   decoration: InputDecoration(
// // //                     border: OutlineInputBorder(
// // //                       borderRadius: BorderRadius.all(Radius.circular(25)),
// // //                       borderSide: BorderSide(color: Color(0XFF40513B)),
// // //                     ), //outlineinputborder
// // //                   ), //inputdecoration
// // //                 ), //textformfield
// // //               ), //sizedbox
// // //               SizedBox(height: 20.0),
// // //               const Text(
// // //                 'Password',
// // //                 style: TextStyle(
// // //                   color: Color(0XFF40513B),
// // //                   fontSize: 20.0,
// // //                   fontWeight: FontWeight.bold,
// // //                 ), //text style
// // //               ), //text
// // //               SizedBox(height: 5.0),
// // //               SizedBox(
// // //                 child: TextFormField(
// // //                   keyboardType: TextInputType.visiblePassword,
// // //                   obscureText: true,
// // //                   decoration: InputDecoration(
// // //                     suffixIcon: Icon(Icons.remove_red_eye),
// // //                     border: OutlineInputBorder(
// // //                       borderRadius: BorderRadius.all(Radius.circular(25)),
// // //                       borderSide: BorderSide(color: Color(0XFF40513B)),
// // //                     ), //outlineinputborder
// // //                   ), //inputdecoration
// // //                 ), //textformfield
// // //               ), //sizedbox
// // //               SizedBox(height: 20.0),
// // //               const Text(
// // //                 'Confirm Password',
// // //                 style: TextStyle(
// // //                   color: Color(0XFF40513B),
// // //                   fontSize: 20.0,
// // //                   fontWeight: FontWeight.bold,
// // //                 ), //text style
// // //               ), //text
// // //               SizedBox(height: 5.0),
// // //               SizedBox(
// // //                 child: TextFormField(
// // //                   keyboardType: TextInputType.visiblePassword,
// // //                   obscureText: true,
// // //                   decoration: InputDecoration(
// // //                     suffixIcon: Icon(Icons.remove_red_eye),
// // //                     border: OutlineInputBorder(
// // //                       borderRadius: BorderRadius.all(Radius.circular(25)),
// // //                       borderSide: BorderSide(color: Color(0XFF40513B)),
// // //                     ), //outlineinputborder
// // //                   ), //inputdecoration
// // //                 ), //textformfield
// // //               ), //sizedbox
// // //               SizedBox(height: 20.0),
// // //               SizedBox(
// // //                 height: 50.0,
// // //                 width: 300.0,
// // //                 child: ElevatedButton(
// // //                   style: ButtonStyle(
// // //                       backgroundColor: MaterialStateProperty.all(
// // //                           const Color(0XFF40513B))), //button style
// // //                   onPressed: () {},
// // //                   child: const Text(
// // //                     "Creat account",
// // //                     style: TextStyle(
// // //                       color: Colors.white,
// // //                       fontSize: 20,
// // //                     ), //textstyle
// // //                   ), //text
// // //                 ), //elevated button
// // //               ), //sizedbox
// // //             ], //cchildren
// // //           ),
// // //         ), //colunm
// // //         //B sizedbox
// // //       ), //column
// // //     ); //padding
// // //   } //widget
// // // } //class
import 'package:flutter/material.dart';
import 'package:second_project/components/api/endpoints.dart';
import 'package:second_project/components/crud.dart';
import 'package:second_project/components/valid.dart';

class SignUpApp extends StatefulWidget {
  @override
  State<SignUpApp> createState() => _SignUpAppState();
}

class _SignUpAppState extends State<SignUpApp> {
  GlobalKey<FormState> formState = GlobalKey();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password_confirmation = TextEditingController();
  TextEditingController password = TextEditingController();

  Crud _crud = Crud();
  bool isLoading = false;

  Future<void> signUp() async {
    if (formState.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });

      var response = await _crud.postRequest("${EndPoints.baseUrl}register", {
        "name": username.text,
        "email": email.text,
        "password": password.text,
        "password_confirmation": password.text,
      });

      setState(() {
        isLoading = false;
      });

      if (response["status"] == "success") {
        Navigator.of(context).pushNamed("/home");
        print("Yessss");
      } else {
        print(response["status"]);
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text("Failed to sign up. Please try again later."),
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
        title: Text("Sign Up"),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: formState,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: username,
                        validator: (value) {
                          return validinput(value!, 3, 100);
                        },
                        decoration: InputDecoration(
                          labelText: 'Username',
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
                        controller: email,
                        validator: (value) {
                          return validinput(value!, 3, 100);
                        },
                        decoration: InputDecoration(
                          labelText: 'Email',
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
                        controller: password_confirmation,
                        validator: (value) {
                          return validinput(value!, 3, 100);
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password_confirmation',
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
                      SizedBox(height: 50),
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
                                await signUp();
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
