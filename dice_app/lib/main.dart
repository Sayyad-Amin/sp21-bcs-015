import 'package:flutter/material.dart';
import 'dart:math';
int randomNumber=1;
int left_image=1;
int up_image=1;
int down_image=1;
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

  void random(){
    randomNumber=Random().nextInt(5)+1;
  }
  void left(){
    left_image=Random().nextInt(5)+1;
  }
  void up(){
    up_image=Random().nextInt(5)+1;
  }
  void down(){
    down_image=Random().nextInt(5)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(borderRadius:
          BorderRadius.circular(55),
            color: Colors.teal,),
          child: Column(
            children: [
              SizedBox(height: 100),
              Column(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: FloatingActionButton(child: Image(image: AssetImage('assets/images/dice$up_image.png'),),
                      onPressed: (){
                        setState(() {
                          up();
                        });
                      },),
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: FloatingActionButton(child: Image(image: AssetImage('assets/images/dice$left_image.png'),),
                          onPressed: (){
                            setState(() {
                              left();
                            });
                          },),
                        ),
                      ),
                      SizedBox(width: 40),
                      Expanded(
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: FloatingActionButton
                          (child: Image(image: AssetImage('assets/images/dice$randomNumber.png'),),
                          onPressed: (){
                            setState(() {
                              random();
                            });
                          },),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: FloatingActionButton(child: Image(image: AssetImage('assets/images/dice$down_image.png'),),
                      onPressed: (){
                        setState(() {
                          down();
                        });
                      },),
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}



