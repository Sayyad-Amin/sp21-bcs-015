import 'package:flutter/material.dart';

import 'Question2.dart';

class Question1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0,
            right: 18.0,top: 18),
        child: Container(
          width: 400,
          height: 600,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Colors.teal),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text('Which famous Islamic monument was built during the Golden Age of Islam?',
                  style: TextStyle(fontSize: 35),),
              ),
              SizedBox(height: 25),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Question2();
                }));
              }, child: Text('Hagia Sophia',
                style: TextStyle(fontSize: 30),)),
              SizedBox(height: 25),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Question2();
                }));
              }, child: Text('Taj Mahal',
                style: TextStyle(fontSize: 30),)),
              SizedBox(height: 25),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Question2();
                }));
              }, child: Text('Dome of Rock',
                style: TextStyle(fontSize: 30),)),
            ],
          ),
        ),
      ),
    );
  }
}

