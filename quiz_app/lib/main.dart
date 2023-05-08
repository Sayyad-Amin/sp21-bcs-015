import 'package:flutter/material.dart';
import 'package:quiz_app/Question1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          width: 400,
          height: 500,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Colors.teal),
          child: Column(
            children: [
              SizedBox(height: 50),
              Text('Golden Era of Islam',
                style: TextStyle(fontSize: 35),),
              SizedBox(height: 45),
              ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return Question1();
                }));
              }, child: Text('Start Quiz..',
                style: TextStyle(fontSize: 30),))
            ],
          ),
        ),
      )


    );
  }
}
