import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        title: Text('XyloPhone App',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
      ),
      body: SingleChildScrollView(

        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(height: 60,
                child: InkWell(
                  onTap:(){
                    print('Hellow World...');
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(borderRadius:
                    BorderRadius.circular(25),color: Colors.orange,),
                  ),
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(height: 60,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(25),color: Colors.green),
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(height: 60,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(25),color: Colors.pink),
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(height: 60,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(25),color: Colors.blueGrey),
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(height: 60,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(25),color: Colors.blue),
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(height: 60,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(25),color: Colors.teal),
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(height: 60,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(25),color: Colors.red),
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(height: 60,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(25),color: Colors.deepPurpleAccent),
                ),),
            ),




          ],
        ),
      ),
    );
  }
}
