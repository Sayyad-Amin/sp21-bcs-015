import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  var massText=TextEditingController();
  var heightText=TextEditingController();
   String bmiBody='';
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
        color: Colors.teal.shade200,
        child: Column(
          children: [
            SizedBox(height: 30),
            Text('Mass Of Your Body:',
              style: TextStyle(fontSize: 25),),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(controller: massText,decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)
                  )
              ),style: TextStyle(fontSize: 25),),
            ),
              Text('Height Of Your Body:',
                style: TextStyle(fontSize: 25),),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(controller: heightText,decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  )
                ),style: TextStyle(fontSize: 25),),
              ),
              ElevatedButton(onPressed: (){
                var mass=int.parse(massText.text.toString());
                var height=int.parse(heightText.text.toString());
                bmiBody="Bmi Of Your Body\n ${mass/(sqrt(height))}";
                setState(() {

                });
              },
                  child: Text('Calculate',
                    style: TextStyle(fontSize: 25))),
              SizedBox(height: 15),
              Text(bmiBody,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)
          ],
        ),
      )
    );
  }
}

