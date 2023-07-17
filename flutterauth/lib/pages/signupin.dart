import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterauth/auth.dart';

import '../config.dart';
import 'bottomnavbar.dart';

class SignInUp extends StatefulWidget {
  const SignInUp({super.key});

  @override
  State<SignInUp> createState() => _SignInUpState();
}

class _SignInUpState extends State<SignInUp> {
  String? errorMessage = '';
  bool isLogin = true;
  // email & password controller
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  // signin Methode
  Future<void> signIn() async {
    try {
      await Auth().signIn(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Invalid details. Please check.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  // signup Methode
  Future<void> signUp() async {
    try {
      await Auth().signUp(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Invalid details. Please check.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

// Input methode
  Widget _entryField(
    String title,
    TextEditingController controller,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          label: Text(title),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }

  // handle error
  Widget _errorMessage() {
    return Text(errorMessage == '' ? '' : 'Humm ? $errorMessage');
  }

  // Submit button
  Widget _submitButton() {
    return Container(
      width: double.infinity,
      height: 50.fh,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BottomNavBar()),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFF6318AF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Text(isLogin ? 'Login' : 'Register'),
      ),
    );
  }

//  change the login to register (viceversa)
  Widget _LoginOrregisterButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          isLogin = !isLogin;
        });
      },
      child: Text(isLogin ? 'Register instead' : 'Login instead'),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: ClipPath(
                clipper: TopCurvesClipper(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.92,
                  color: const Color(0xFF6318AF),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 50.fh),
                      child: Column(
                        children: [
                          Container(
                            width: 100.fw,
                            height: 100.fh,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assests/Logo.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.fh,
                          ),
                          Text(
                            'CraftMyPlate',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.06,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 280.fh,
              left: 20.fw,
              child: Text(
                'Login or Signup',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.06,
                  color: Colors.black45,
                ),
              ),
            ),
            Positioned(
              top: 330.fh,
              left: 20.fw,
              right: 20.fw,
              child: Column(
                children: [
                  _entryField('Email', _controllerEmail),
                  SizedBox(height: 20.fh),
                  _entryField('Password', _controllerPassword),
                  SizedBox(height: 20.fh),
                  _submitButton(),
                  _LoginOrregisterButton(),
                  SizedBox(
                    height: 60.fh,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'By continuing, you agree to our',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.042,
                            color: Colors.black45),
                      ),
                      SizedBox(
                        height: 5.fh,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Text(
                                'Terms of Service',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.042,
                                  color: Colors.black45,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              alignment: PlaceholderAlignment.middle,
                            ),
                            TextSpan(
                              text: '  ',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.042,
                                color: Colors.black45,
                              ),
                            ),
                            WidgetSpan(
                              child: Text(
                                'Privacy Policy',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.042,
                                  color: Colors.black45,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              alignment: PlaceholderAlignment.middle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopCurvesClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // First Curve
    path.lineTo(0, size.height * 0.3);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.4,
        size.width * 0.3, size.height * 0.3);

    // Second Curve
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.4,
        size.width * 0.7, size.height * 0.3);

    // Third Curve
    path.quadraticBezierTo(
        size.width * 0.90, size.height * 0.4, size.width, size.height * 0.3);

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
