import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_genrator/selection_screen.dart';

class ResultsScreen extends StatelessWidget {
  final int correctAnswers;
  final int incorrectAnswers;

  ResultsScreen({required this.correctAnswers, required this.incorrectAnswers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(
            colors: [
              Colors.purple.shade200,
              Colors.teal.shade200
            ]
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Correct Answers: $correctAnswers', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
              Text('Incorrect Answers: $incorrectAnswers', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back to Quiz', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SelectionScreen()),
                  );
                },
                child: Text('HomePage',style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}