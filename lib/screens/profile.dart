import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:second_project/screens/cart.dart';
import 'package:second_project/screens/home.dart';

class AccountProfile extends StatelessWidget {
  const AccountProfile({super.key});
  // get bottomNavigationBar => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          children: [
            Spacer(
              flex: 1,
            ),
            IconButton(
              icon: Image.asset('ca.png'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return Home();
                })));
              },
            ),
            Spacer(
              flex: 1,
            ),
            IconButton(
              icon: Image.asset('hh.png'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return cart();
                })));
              },
            ),
            Spacer(
              flex: 1,
            ),
            IconButton(
                icon: Image.asset('pr.png'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AccountProfile()));
                }),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 45),
            const Text(
              'Account Profile',
              style: TextStyle(
                color: Color(0XFF9DC08B),
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 600,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0XFF9DC08B),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      " Name",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "                              Mariam Elmashd",
                      style:
                          TextStyle(fontSize: 15.0, color: Color(0Xff40513B)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 50,
              width: 600,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0XFF9DC08B),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " Email",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "mariamelmashd@gmail.com",
                      style:
                          TextStyle(fontSize: 14.0, color: Color(0Xff40513B)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 60),
            const Text(
              'Account',
              style: TextStyle(
                color: Color(0XFF9DC08B),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 50,
              width: 600,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0XFF9DC08B),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      "Change Password",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 130),
                    FaIcon(
                      FontAwesomeIcons.angleRight,
                      size: 18,
                      color: Color(0XFF40513B),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 50,
              width: 600,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0XFF9DC08B),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      "Sign Out",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 200),
                    FaIcon(
                      FontAwesomeIcons.powerOff,
                      size: 16,
                      color: Color(0XFF40513B),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 60),
            Container(
              height: 50,
              width: 600,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0XFF9DC08B),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      " Delete my account",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 120),
                    FaIcon(
                      FontAwesomeIcons.angleRight,
                      size: 18,
                      color: Color(0XFF40513B),
                    ),
                  ],
                ),
              ),
            ),
            //       bottomNavigationBar(
            //         Padding(
            //           padding: EdgeInsets.only(top: 20),
            //           child: Row(children: [
            //             Spacer(
            //               flex: 1,
            //             ),
            //             IconButton(
            //               icon: Image.asset('imeges/ca.jpg'),
            //               onPressed: () {
            //                 // Navigator.push(context,MaterialPageRoute(builder: (context) {
            //                 //   return Home();
            //                 //   }
            //                 // ),
            //                 // );
            //               },
            //             ),
            //             Spacer(flex: 1),
            //             IconButton(
            //               icon: Image.asset('imeges/hh.jpg'),
            //               onPressed: () {
            //                 //   Navigator.push(context, MaterialPageRoute(builder: (context) {
            //                 //     return cart();
            //                 //  }
            //                 // )
            //                 // );
            //               },
            //             ),
            //             Spacer(flex: 1),
            //             IconButton(
            //               icon: Image.asset('imeges/pr.jpg'),
            //               onPressed: () {
            //                 Navigator.push(context,
            //                     MaterialPageRoute(builder: (context) {
            //                   return const AccountProfile();
            //                 }));
            //               },
            //             ),
            //             Spacer(flex: 1)
            //           ]),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // );
          ],
        ),
      ),
    );
  }
}
