import 'package:flutter/material.dart';
import 'widget/body_results_screen.dart';

class ResultsScreen extends StatelessWidget {
  final double bmi;
  final String result;
  final String details;

  const ResultsScreen({
    super.key,
    required this.bmi,
    required this.result,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text('BMI Calculator', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color(0xFF0A0E21),
        iconTheme:  IconThemeData(color: Colors.white),
      ),
      body: BodyResultsScreen(bmi: bmi, result: result, details: details,),
    );
  }
}