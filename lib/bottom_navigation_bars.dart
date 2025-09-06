import 'package:flutter/material.dart';
import 'bmi/bmi_calculator.dart';
import 'calculator/calculator.dart';

class BottomNavigationBars extends StatefulWidget {
  const BottomNavigationBars({super.key});

  @override
  State<BottomNavigationBars> createState() => _BottomNavigationBarsState();
}

class _BottomNavigationBarsState extends State<BottomNavigationBars> {
  int currentIndex = 0;
  List<Widget> pages = [BmiCalculator(), Calculator()];
  List<String> titles = ["BMI Calculator", "Calculator"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        backgroundColor: Color(0xFF123456),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor_weight),
            label: "BMI Calculator",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: "Calculator",
          ),
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      appBar: AppBar(
        title: Text(titles[currentIndex]),
        centerTitle: true,
        //backgroundColor: Color(0xFF123456),
      ),
      body: pages[currentIndex],
    );
  }
}
