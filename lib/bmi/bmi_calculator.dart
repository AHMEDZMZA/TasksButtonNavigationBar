import 'package:flutter/material.dart';
import 'package:t1meeting/bmi/results_screen.dart';
import 'package:t1meeting/bmi/widget/custom_first_container.dart';
import 'widget/custom_button.dart';
import 'widget/custom_third_container.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  double height = 100.0;
  int weight = 20;
  int age = 5;
  bool colorMale = false;
  bool colorFemale = false;
  double bmi = 0;
  String result = '';
  String details = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      body: Column(
        children: [
          //---------------------------- * First Container * -------------------
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomFirstContainer(
                  icon: Icons.male,
                  text: 'Male',
                  color: colorMale ? Colors.blue : Color(0xFF1D1E33),
                  onTap: () {
                    setState(() {
                      colorMale = !colorMale;
                      colorFemale = false;
                    });
                  },
                ),
                CustomFirstContainer(
                  icon: Icons.female,
                  text: 'Female',
                  color: colorFemale ? Colors.pink : Color(0xFF1D1E33),
                  onTap: () {
                    setState(() {
                      colorFemale = !colorFemale;
                      colorMale = false;
                    });
                  },
                ),
              ],
            ),
          ),
          //---------------------------- * End Container * ---------------------

          //---------------------------- * Second Container * ---------------------
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toStringAsFixed(1),
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        child: Text(
                          'cm',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: height,
                    max: 250,
                    min: 100,
                    onChanged: (double value) {
                      setState(() {
                        height = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          //---------------------------- * End Container * ---------------------

          //---------------------------- * Third Container * ---------------------
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomThirdContainer(
                  title: 'Weight',
                  number: weight,
                  onTap1: () {
                    setState(() {
                      if (weight < 300) {
                        weight++;
                      }
                    });
                  },
                  onTap2: () {
                    setState(() {
                      if (weight > 20) {
                        weight--;
                      }
                    });
                  },
                ),
                SizedBox(width: 10),
                CustomThirdContainer(
                  title: 'Age',
                  number: age,
                  onTap1: () {
                    setState(() {
                      if (age < 120) {
                        age++;
                      }
                    });
                  },
                  onTap2: () {
                    setState(() {
                      if (age > 5) {
                        age--;
                      }
                    });
                  },
                ),
              ],
            ),
          ),
          //---------------------------- * End Container * ---------------------

          //---------------------------- * Button * ----------------------------
          CustomButton(
            text: 'Calculate',
            onTap: () {
              if (colorMale || colorFemale) {
                bmi = weight / ((height / 100) * (height / 100));
                if (bmi < 18.5) {

                  result = 'Underweight';
                  details =
                      'You have a lower weight than normal.\nTry to gain some weight by exercising more.';
                } else if (bmi >= 18.5 && bmi < 24.9) {
                  result = 'Normal';
                  details = 'You have a normal weight.\nGood job!';
                } else if (bmi >= 25 && bmi < 29.9) {
                  result = 'Overweight';
                  details =
                      'You have a higher weight than normal.\nTry to lose some weight by exercising more.';
                } else if (bmi >= 30 && bmi < 39.9) {
                  result = 'Obese';
                  details =
                      'You have a higher weight than normal.\nTry to lose some weight by exercising more.';
                } else {
                  result = 'Obese';
                  details =
                      'You have a higher weight than normal.\nTry to lose some weight by exercising more.';
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return ResultsScreen(
                        bmi: bmi,
                        result: result,
                        details: details,
                      );
                    },
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Please select gender'),
                  ),
                );
              }
            },
          ),
          //---------------------------- * End Button * ------------------------
        ],
      ),
    );
  }
}
