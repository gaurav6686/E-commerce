// import 'package:flutter/material.dart';
// import 'package:flutterauth/pages/HomePage.dart';
// import 'package:flutterauth/pages/home.dart';
// import 'package:flutterauth/pages/signinup.dart';
// import 'package:flutterauth/pages/signupin.dart';
// import 'auth.dart';


// class MyWidget extends StatefulWidget {
// const MyWidget({Key? key}) : super(key: key);

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//       stream: Auth().authStatechanges,
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return HomePage();
//         } else {
//           return const SignInUp();
//         }
//       },
//     );
//   }
// }
