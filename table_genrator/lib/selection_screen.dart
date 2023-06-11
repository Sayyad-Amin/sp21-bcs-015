import 'package:flutter/material.dart';
import 'package:table_genrator/main.dart';
import 'package:table_genrator/select_question_screen.dart';
import 'package:table_genrator/table_screen.dart';
import 'factorial_screen.dart';

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(gradient: LinearGradient(
            colors: [
              Colors.purple.shade200,
              Colors.teal.shade200
            ]
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FactorialScreen()),
                );
              },
              child: Text('Calculate Factorial',style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InputScreen()),
                );
              },
              child: Text('Table Generate',style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),),
            ),
          ],
        ),
      ),
    );
  }
}
