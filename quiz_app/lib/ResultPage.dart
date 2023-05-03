import 'package:flutter/material.dart';
import 'package:quiz_app/Question1.dart';
import 'package:quiz_app/Question3.dart';
import 'package:quiz_app/main.dart';

class ResultPage extends StatelessWidget {

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
              SizedBox(height: 50),
            Text('Result..',
            style: TextStyle(fontSize: 35),),
        SizedBox(height: 50),
            Text('Write Answers: ',
              style: TextStyle(fontSize: 30),),
              SizedBox(height: 25),
            Text('Wrong Answers:',
              style: TextStyle(fontSize: 30),),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('Retake Quiz',
                style: TextStyle(fontSize: 35),),
                  SizedBox(width: 20),
                  ElevatedButton(child: Icon(Icons.refresh,size: 40,),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return MyHomePage();
                    }));
                  },)
                ],
              )


            ],
          )
        ),
      ),
    );
  }
}

