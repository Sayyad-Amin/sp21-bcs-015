import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
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

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Generator App',style: TextStyle(fontSize: 25),),
      ),
      body: Container(
        color: Colors.teal.shade200,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 20.0,right: 8),
              child: Text('Which Table you want to generate',
                style: TextStyle(fontSize: 25),),
            ),
            TextField()
          ],
        ),
      )

    );
  }
}
