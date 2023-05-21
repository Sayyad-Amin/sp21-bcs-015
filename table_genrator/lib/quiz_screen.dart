import 'package:flutter/material.dart';
import 'dart:math';
import 'package:table_genrator/main.dart';

class QuizScreen extends StatefulWidget {
  final int tableNumber;
  final int startingPoint;
  final int endingPoint;

  QuizScreen({
    required this.tableNumber,
    required this.startingPoint,
    required this.endingPoint,
  });

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late int currentNumber;
  late int correctAnswer;
  List<int> answerOptions = [];

  @override
  void initState() {
    super.initState();
    generateQuestion();
  }

  void generateQuestion() {
    setState(() {
      currentNumber = Random().nextInt(widget.endingPoint - widget.startingPoint + 1) + widget.startingPoint;
      correctAnswer = widget.tableNumber * currentNumber;
      answerOptions = generateAnswerOptions(correctAnswer);
    });
  }

  List<int> generateAnswerOptions(int correctAnswer) {
    Set<int> options = {correctAnswer};
    while (options.length < 3) {
      options.add(correctAnswer + Random().nextInt(5) - 2);
    }
    return options.toList()..shuffle();
  }

  void checkAnswer(int userAnswer) {
    if (userAnswer == correctAnswer) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Correct!',style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.w600),)),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Incorrect. The correct answer is $correctAnswer.',style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.w600),)),
      );
    }
    generateQuestion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz: Table of ${widget.tableNumber}',style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.w600),),
      ),
      body: Container(
        color: Colors.teal.shade200,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${widget.tableNumber} x $currentNumber = ?',
                  style: TextStyle(fontSize: 35,
                      fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: answerOptions.map((answer) {
                  return ElevatedButton(
                    onPressed: () => checkAnswer(answer),
                    child: Text('$answer',style: TextStyle(fontSize: 35,
                        fontWeight: FontWeight.w600),),
                  );
                }).toList(),
              ),
              SizedBox(height: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context){
                        return InputScreen();
                      }));
                    },
                    child: Text('Generate Table',style: TextStyle(fontSize: 30,
                        fontWeight: FontWeight.w600),),
                  ),
                  SizedBox(height: 25,),
                  ElevatedButton(
                    onPressed: () {
                      generateQuestion();
                    },
                    child: Text('Next Question',style: TextStyle(fontSize: 30,
                        fontWeight: FontWeight.w600),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
