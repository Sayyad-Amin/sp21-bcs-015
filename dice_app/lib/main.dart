
import 'package:flutter/material.dart';

void main(){
  runApp(dice_app());
}
class dice_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: dicePage(),
    );
  }
}
class dicePage extends StatelessWidget {
  const dicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice App'),

      ),
      body: Container(
        width: 200,
        height: 200,
        color: Colors.deepPurple,
      ),
    );
  }
}

