import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterauth/Widget.dart';
import 'package:flutterauth/pages/signupin.dart';

class Splash1 extends StatelessWidget {
  const Splash1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFF6318AF),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
              Container(
                width: 120,
                height: 140,
                child: Image.asset('assests/Logo.png'),
              ),
              const SizedBox(height: 10),
              Text(
                'Welcome',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFF7E5B7),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {

@override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignInUp()),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFF6318AF),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 180,
                child: Image.asset('assests/Logo.png'),
              ),
              Text(
                'Craft My Plate',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFF7E5B7),
                ),
              ),
              Text(
                'You customize, We cater',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: const Color(0xFFF7E5B7),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
