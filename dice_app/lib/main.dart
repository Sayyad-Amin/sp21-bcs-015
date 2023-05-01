
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
  var count=0;
  void _incremnet(){
    count+=1;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice App'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child:
                    Image(image: AssetImage('assets/images/dice1.png'),)),
                    SizedBox(width: 20),
                    Expanded(child:
                    Image(image: AssetImage('assets/images/dice2.png'),))
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child:
                    Image(image: AssetImage('assets/images/dice3.png'),)),
                    SizedBox(width: 20),
                    Expanded(child:
                    Image(image: AssetImage('assets/images/dice4.png'),))
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child:
                    Image(image: AssetImage('assets/images/dice5.png'),)),
                    SizedBox(width: 20),
                    Expanded(child:
                    Image(image: AssetImage('assets/images/dice6.png'),))
                  ],
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}



