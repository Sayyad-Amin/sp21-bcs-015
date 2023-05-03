import 'package:flutter/material.dart';
import 'package:quiz_app/Question4.dart';

class Question3 extends StatelessWidget {

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Islam has pillars..',
                style: TextStyle(fontSize: 35),),
              SizedBox(height: 25),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Question4();
                }));
              }, child: Text('5',
                style: TextStyle(fontSize: 25),)),
              SizedBox(height: 25),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Question4();
                }));
              }, child: Text('5',
                style: TextStyle(fontSize: 25),)),
              SizedBox(height: 25),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Question4();
                }));
              }, child: Text('5',
                style: TextStyle(fontSize: 25),)),
            ],
          ),
        ),
      ),
    );
  }
}

