import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text('Quiz App'),
      ),
      body: Container(
        width: 400,
        height: 400,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: [
            Text('Golden Era of Islam',
              style: TextStyle(fontSize: 25),),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){

            }, child: Text('Start Quiz..'))
          ],
        ),
      )


    );
  }
}
