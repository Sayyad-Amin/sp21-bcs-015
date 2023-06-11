import 'dart:async';
import 'package:flutter/material.dart';
import 'package:table_genrator/main.dart';
import 'package:table_genrator/selection_screen.dart';

import 'factorial_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context as BuildContext,
          MaterialPageRoute(builder: (context){
        return SelectionScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(gradient: LinearGradient(
          colors: [
          Colors.purple.shade300,
            Colors.teal.shade300
          ]
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 400,
                height: 200,
                child: Image.asset('assets/images/numbers.png')),

          ],
        ),

          ),

    );
  }
}
