import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AgeCalculatorScreen extends StatefulWidget {
  @override
  _AgeCalculatorScreenState createState() => _AgeCalculatorScreenState();
}

class _AgeCalculatorScreenState extends State<AgeCalculatorScreen> {
  DateTime? _selectedDate;
  int? _age;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
        _age = _calculateAge(pickedDate);
      });
    }
  }

  int _calculateAge(DateTime selectedDate) {
    final now = DateTime.now();
    int age = now.year - selectedDate.year;
    if (now.month < selectedDate.month ||
        (now.month == selectedDate.month && now.day < selectedDate.day)) {
      age--;
    }
    return age;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Age Calculator'),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(gradient: LinearGradient(
            colors: [
              Colors.purple.shade200,
              Colors.teal.shade200
            ]
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => _selectDate(context),
                child: Text('Select Birth Date',style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),),
              ),
              SizedBox(height: 16.0),
              if (_selectedDate != null)
                Text(
                  'Selected Date: ${DateFormat('dd/MM/yyyy').format(_selectedDate!)}',
                  style: TextStyle(fontSize: 30.0),
                ),
              SizedBox(height: 16.0),
              if (_age != null)
                Text(
                  'Age: $_age years',
                  style: TextStyle(fontSize: 30.0),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
