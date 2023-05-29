import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Math Tables Generator',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tables Generator App',
            style: TextStyle(fontSize: 25),),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(left: 108.0,top: 25),
              child: Column(

                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.teal,),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.teal,),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.teal,),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.teal,),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.teal,),
                  ),
                ],
              ),
            ),
          ),
        ),

    );
  }
}


