
import 'package:flutter/material.dart';

void main(){
  runApp(dice_app());
}
class dice_app  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    title: 'Dice App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: dicePage(),
    );
  }
}

class dicePage  extends StatefulWidget {

  @override
  State<dicePage> createState() => _dice_appState();
}
class _dice_appState extends State<dicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice App'),
      ),
      body: Container(
        width: 100,
        height: 100,
        color: Colors.teal,
      ),
    );
  }
}



