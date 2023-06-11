import 'package:flutter/material.dart';

class BMICalculatorScreen extends StatefulWidget {
  @override
  _BMICalculatorScreenState createState() => _BMICalculatorScreenState();
}

class _BMICalculatorScreenState extends State<BMICalculatorScreen> {
  double _height = 160;
  double _weight = 60;
  double _bmi = 0;

  void _calculateBMI() {
    setState(() {
      if (_height > 0 && _weight > 0) {
        _bmi = _weight / ((_height / 100) * (_height / 100));
      } else {
        _bmi = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator',style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(gradient: LinearGradient(
            colors: [
              Colors.purple.shade200,
              Colors.teal.shade200
            ]
        )),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Height (cm)',
                style: TextStyle(fontSize: 25.0),
              ),
              SizedBox(height: 8.0),
              Slider(
                value: _height,
                min: 120,
                max: 220,
                divisions: 100,
                onChanged: (value) {
                  setState(() {
                    _height = value;
                  });
                },
              ),
              Text(
                _height.round().toString(),
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 16.0),
              Text(
                'Weight (kg)',
                style: TextStyle(fontSize: 25.0),
              ),
              SizedBox(height: 8.0),
              Slider(
                value: _weight,
                min: 30,
                max: 150,
                divisions: 120,
                onChanged: (value) {
                  setState(() {
                    _weight = value;
                  });
                },
              ),
              Text(
                _weight.round().toString(),
                style: TextStyle(fontSize: 30.0),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _calculateBMI,
                child: Text('Calculate BMI',style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),),
              ),
              SizedBox(height: 16.0),
              PerformanceIndicator(bmi: _bmi),
            ],
          ),
        ),
      ),
    );
  }
}

class PerformanceIndicator extends StatelessWidget {
  final double bmi;

  PerformanceIndicator({required this.bmi});

  String _getPerformanceText() {
    if (bmi == 0) {
      return 'Please enter your height and weight';
    } else if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi < 25) {
      return 'Normal weight';
    } else if (bmi >= 25 && bmi < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  Color _getPerformanceColor() {
    if (bmi == 0) {
      return Colors.black;
    } else if (bmi < 18.5) {
      return Colors.orange;
    } else if (bmi >= 18.5 && bmi < 25) {
      return Colors.green;
    } else if (bmi >= 25 && bmi < 30) {
      return Colors.yellow;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(gradient: LinearGradient(
          colors: [
            Colors.purple.shade200,
            Colors.teal.shade200
          ]
      )),
      child: Column(
        children: [
          Text(
            'BMI: ${bmi.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 30.0),
          ),
          SizedBox(height: 8.0),
          Text(
            _getPerformanceText(),
            style: TextStyle(
              fontSize: 30.0,
              color: _getPerformanceColor(),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
