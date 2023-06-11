import 'package:flutter/material.dart';
import 'package:table_genrator/select_question_screen.dart';
import 'quiz_screen.dart';

class TableScreen extends StatelessWidget {
  final int tableNumber;
  final int startingPoint;
  final int endingPoint;

  TableScreen({
    required this.tableNumber,
    required this.startingPoint,
    required this.endingPoint,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table of $tableNumber',style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.w600),),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: endingPoint - startingPoint + 1,
              itemBuilder: (BuildContext context, int index) {
                int currentNumber = startingPoint + index;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(gradient: LinearGradient(
                        colors: [
                          Colors.purple.shade200,
                          Colors.teal.shade200
                        ]
                    )),
                    child: ListTile(
                      title: Center(
                        child: Text(
                          '$tableNumber x $currentNumber = ${tableNumber * currentNumber}',
                          style: TextStyle(fontSize: 25,
                              fontWeight: FontWeight.w600),),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectQuestionsScreen(

                    ),
                  ),
                );
              },
              child: Text('Generate Quiz',style: TextStyle(fontSize: 35,
                  fontWeight: FontWeight.w600),),
            ),
          ),
        ],
      ),
    );
  }
}
