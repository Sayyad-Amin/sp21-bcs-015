import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: XylophonePage(),
    );
  }
}
class XylophonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('XyloPhone App'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,color,),


        ],
      ),
    );
  }
}
