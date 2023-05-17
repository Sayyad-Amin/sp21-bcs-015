import 'package:flutter/material.dart';
import 'package:table_genrator/splash_screen.dart';

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
  void table(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Genrator App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(onPressed: (){
              print("Yes clicked");
            },style: TextButton.styleFrom(foregroundColor: Colors.teal),
                child: Text('Please click here..',
                  style: TextStyle(fontSize: 25),))

          ],
        ),
      )

    );
  }
}
