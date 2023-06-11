import 'package:flutter/material.dart';

class FactorialScreen extends StatefulWidget {
  @override
  _FactorialScreenState createState() => _FactorialScreenState();
}

class _FactorialScreenState extends State<FactorialScreen> {
  double _currentValue = 1;
  int _factorial = 1;

  void _calculateFactorial() {
    int result = 1;
    for (int i = 1; i <= _currentValue; i++) {
      result *= i;
    }
    setState(() {
      _factorial = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Factorial Calculator'),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(
            colors: [
              Colors.purple.shade200,
              Colors.teal.shade200
            ]
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Text(
              'Select a number:',
              style: TextStyle(fontSize: 30.0),
            ),
            Slider(
              value: _currentValue,
              min: 1,
              max: 20,
              divisions: 19,
              onChanged: (double value) {
                setState(() {
                  _currentValue = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            Text(
              'Number: $_currentValue',
              style: TextStyle(fontSize: 30.0),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _calculateFactorial();
              },
              child: Text('Calculate Factorial',
                style: TextStyle(fontSize: 30),),
            ),
            SizedBox(height: 16.0),
            Text(
              'Factorial: $_factorial',
              style: TextStyle(fontSize: 30.0),
            ),

          ],
        ),
      ),
    );
  }
}
