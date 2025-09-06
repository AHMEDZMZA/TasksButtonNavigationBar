import 'package:flutter/material.dart';
import '../../bottom_navigation_bars.dart';
import 'custom_button.dart';

class BodyResultsScreen extends StatelessWidget {
  const BodyResultsScreen({
    super.key,
    required this.bmi,
    required this.result,
    required this.details,
  });

  final double bmi;
  final String result;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Your Result',
          style: TextStyle(fontSize: 50, color: Colors.white),
        ),
        SizedBox(height: 40),
        Container(
          width: double.infinity,
          height: 500,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xFF1D1E33),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              SizedBox(height: 60),
              Text(result, style: TextStyle(fontSize: 30, color: Colors.white)),
              SizedBox(height: 60),
              Text(
                bmi.toStringAsFixed(1),
                style: TextStyle(fontSize: 100, color: Colors.white),
              ),
              SizedBox(height: 60),
              Text(
                textAlign: TextAlign.center,
                details,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
        CustomButton(
          text: 'Recalculate',
          onTap: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) {
              return BottomNavigationBars();
            }), (route) => false);
          },
        ),
      ],
    );
  }
}
