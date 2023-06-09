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
   var bmiBody=0.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI App',style: TextStyle(fontSize: 25),),
      ),
      body: Container(
        width: 400,
        color: Colors.teal.shade200,
        child: Column(
          children: [
            SizedBox(height: 30),
            Text('Mass Of Your Body:',
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(controller: massText,decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)
                  )
              ),style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
            ),
              Text('Height Of Your Body:',
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(controller: heightText,decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  )
                ),style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
              ),
              ElevatedButton(onPressed: (){
                var mass=double.parse(massText.text.toString());
                var height=double.parse(heightText.text.toString());
                bmiBody=mass/(sqrt(height));
                setState(() {

                });
              },
                  child: Text('Calculate',
                    style: TextStyle(fontSize: 25))),
              SizedBox(height: 15),
            Text('BMI Of Your Body',
              style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.w500),),
              SizedBox(height: 15),
              Text('$bmiBody',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)
          ],
        ),
      )
    );
  }
}

