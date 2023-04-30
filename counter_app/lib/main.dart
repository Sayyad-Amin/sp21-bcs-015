import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(

        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Counter App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }
  void refresh(){
    setState(() {
      _counter=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),

      body:Padding(
        padding: const EdgeInsets.only(top: 38.0),
        child: Container(
          child: Wrap(
            children: [
                SizedBox(width: 25),
                ElevatedButton(onPressed: _incrementCounter,
                    child:Icon(Icons.add,size: 40)),
                SizedBox(width: 25),
                FloatingActionButton(onPressed: _incrementCounter,
                    child:Icon(Icons.add,size: 40)),
                SizedBox(width: 25),
                ElevatedButton(onPressed: _decrementCounter,
                    child:Icon(Icons.remove,size: 40)),
                SizedBox(width: 25),
                FloatingActionButton(onPressed: _decrementCounter,
                    child:Icon(Icons.remove,size: 40)),

                Padding(
                  padding: const EdgeInsets.only(left: 82.0,top: 32),
                  child: Row(
                    children: [
                      FloatingActionButton(onPressed: refresh,
                          child:Icon(Icons.refresh,size: 40)),
                      SizedBox(width: 55),
                      ElevatedButton(onPressed: refresh,
                          child:Icon(Icons.refresh,size: 40)),

                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(width: 50,child: Text('$_counter',
                        style: TextStyle(fontSize: 43,
                            fontWeight: FontWeight.bold,
                        color: Colors.orange),)),
                      SizedBox(height: 45,child: Text(
                        'Change it as you like...',
                        style: TextStyle(fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.orange),
                      ),),

                    ],
                  ),
                ),
              ),


              ],
            ),
          ),
        ),


    );
  }
}
