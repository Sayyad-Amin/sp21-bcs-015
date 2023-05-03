import 'package:flutter/material.dart';

import 'ResultPage.dart';

class Question5 extends StatelessWidget {

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
                child: Text('Islam has pillars..',
                  style: TextStyle(fontSize: 35),),
              ),
              SizedBox(height: 25),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ResultPage();
                }));
              }, child: Text('5',
                style: TextStyle(fontSize: 35),)),
              SizedBox(height: 25),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ResultPage();
                }));
              }, child: Text('6',
                style: TextStyle(fontSize: 35),)),
              SizedBox(height: 25),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ResultPage();
                }));
              }, child: Text('4',
                style: TextStyle(fontSize: 35),)),
            ],
          ),
        ),
      ),
    );
  }
}

