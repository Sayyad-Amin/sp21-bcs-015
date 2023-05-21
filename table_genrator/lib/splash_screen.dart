import 'dart:async';
import 'package:flutter/material.dart';
import 'package:table_genrator/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacement(context as BuildContext,
          MaterialPageRoute(builder: (context){
        return InputScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.teal.shade200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 400,
                height: 200,
                child: Image.asset('assets/images/table.png')),

          ],
        ),

          ),

    );
  }
}
