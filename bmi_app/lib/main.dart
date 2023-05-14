import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double mass=0,height=0;
  double bmi(mass,height){
    double bodymassindex=mass/(sqrt(height));
    return bodymassindex;
  }
  void table(int num){
    for(int i=1;i<=10;i++){
      print('$num * $i = ${num*i}');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI App'),
      ),
      body: Container(
        width: 400,
        color: Colors.teal,
        child: Column(

          children: [
              Padding(
                padding: const EdgeInsets.only(top: 48.0),
                child: Text('BMI Of Your Body:',
                      style: TextStyle(fontSize: 35),),
              ),
            SizedBox(height: 25,),

            Text('${bmi(60, 5.7)}',style: TextStyle(fontSize: 38),)
          ],
        ),
      )
    );
  }
}

