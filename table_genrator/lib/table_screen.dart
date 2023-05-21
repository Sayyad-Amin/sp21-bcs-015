import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  final int tableNumber;
  final int startingPoint;
  final int endingPoint;

  TableScreen({
    required this.tableNumber,
    required this.startingPoint,
    required this.endingPoint,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table of $tableNumber',style: TextStyle(),),
      ),
      body: ListView.builder(
        itemCount: endingPoint - startingPoint + 1,
        itemBuilder: (BuildContext context, int index) {
          int currentNumber = startingPoint + index;
          return ListTile(
            title: Text(
              '$tableNumber x $currentNumber = ${tableNumber * currentNumber}',
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          );
        },
      ),
    );
  }
}
