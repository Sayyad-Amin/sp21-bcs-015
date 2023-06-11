import 'package:flutter/material.dart';
import 'quiz_screen.dart';

class SelectQuestionsScreen extends StatefulWidget {
  @override
  _SelectQuestionsScreenState createState() => _SelectQuestionsScreenState();
}

class _SelectQuestionsScreenState extends State<SelectQuestionsScreen> {
  double _numberOfQuestions = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Number of Questions'),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(
            colors: [
              Colors.purple.shade200,
              Colors.teal.shade200
            ]
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Number of Questions:',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            Slider(
              value: _numberOfQuestions,
              min: 5,
              max: 20,
              divisions: 3,
              label: _numberOfQuestions.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _numberOfQuestions = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizScreen(
                      tableNumber: 5, // Pass your tableNumber here
                      startingPoint: 1, // Pass your startingPoint here
                      endingPoint: 10, // Pass your endingPoint here
                      numberOfQuestions: _numberOfQuestions.round(),
                    ),
                  ),
                );
              },
              child: Text('Start Quiz',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),),
            ),
          ],
        ),
      ),
    );
  }
}
