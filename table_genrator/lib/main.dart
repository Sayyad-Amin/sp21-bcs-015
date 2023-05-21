import 'package:flutter/material.dart';
import 'package:table_genrator/splash_screen.dart';
import 'package:table_genrator/table_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Math Table Generator',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: SplashScreen(),
    );
  }
}
class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  int tableNumber = 1;
  int startingPoint = 1;
  int endingPoint = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Math Table Generator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Table Number: $tableNumber'),
            Slider(
              value: tableNumber.toDouble(),
              min: 1,
              max: 100,
              onChanged: (double newValue) {
                setState(() {
                  tableNumber = newValue.round();
                });
              },
            ),
            Text('Starting Point: $startingPoint'),
            Slider(
              value: startingPoint.toDouble(),
              min: 1,
              max: 100,
              onChanged: (double newValue) {
                setState(() {
                  startingPoint = newValue.round();
                });
              },
            ),
            Text('Ending Point: $endingPoint'),
            Slider(
              value: endingPoint.toDouble(),
              min: 1,
              max: 100,
              onChanged: (double newValue) {
                setState(() {
                  endingPoint = newValue.round();
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TableScreen(
                      tableNumber: tableNumber,
                      startingPoint: startingPoint,
                      endingPoint: endingPoint,
                    ),
                  ),
                );
              },
              child: Text('Generate Table'),
            ),
          ],
        ),
      ),
    );
  }
}

