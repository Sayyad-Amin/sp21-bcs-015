import 'package:flutter/material.dart';
import 'package:quiz_app/Question3.dart';

class Question2 extends StatelessWidget {

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
                child: Text('Which city became the center of learning during the Golden Age of Islam?',
                  style: TextStyle(fontSize: 35),),
              ),
              SizedBox(height: 25),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Question3();
                }));
              }, child: Text('Baghdad',
                style: TextStyle(fontSize: 30),)),
              SizedBox(height: 25),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Question3();
                }));
              }, child: Text('Cairo',
                style: TextStyle(fontSize: 30),)),
              SizedBox(height: 25),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Question3();
                }));
              }, child: Text('Qurtba (Spain)',
                style: TextStyle(fontSize: 30),)),
            ],
          ),
        ),
      ),
    );
  }
}

