import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Math Tables Generator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tables Generator App',
            style: TextStyle(fontSize: 25),),
        ),
        body: Center(
          child: TableWidget(),
        ),
      ),
    );
  }
}

class TableWidget extends StatefulWidget {
  @override
  _TableWidgetState createState() => _TableWidgetState();
}

class _TableWidgetState extends State<TableWidget> {
  int tableNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal.shade200,
      child: Column(
        children: [
          SizedBox(height: 10),
          Text(
            'Table of $tableNumber',
            style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 20),
          Slider(
            value: tableNumber.toDouble(),
            min: 1,
            max: 12,
            divisions: 11,
            label: '$tableNumber',
            onChanged: (value) {
              setState(() {
                tableNumber = value.toInt();
              });
            },
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Table(
              border: TableBorder.all(borderRadius: BorderRadius.circular(25)),
              children: List.generate(
                10,
                    (rowIndex) => TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '$tableNumber * ${rowIndex + 1}',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${(rowIndex + 1) * tableNumber}',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
