import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double num1 = 0;
  double num2 = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        onChanged: (value) {
                          if (value.isEmpty) {
                            num1 = 0;
                          } else {
                            num1 = double.parse(value);
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "0",
                          labelText: "Enter Number 1",
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        onChanged: (value) {
                          if (value.isEmpty) {
                            num2 = 0;
                          } else {
                            num2 = double.parse(value);
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "0",
                          labelText: "Enter Number 2",
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(height: 20, width: 50, color: Colors.blue),
                Text(
                  "Result = $result",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                Container(height: 20, width: 50, color: Colors.blue),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          result = num1 + num2;
                        });
                      },
                      child: Text("+", style: TextStyle(fontSize: 20)),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          result = num1 - num2;
                        });
                      },
                      child: Text("-", style: TextStyle(fontSize: 20)),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          result = num1 * num2;
                        });
                      },
                      child: Text("*", style: TextStyle(fontSize: 20)),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          result = num1 / num2;
                        });
                      },
                      child: Text("/", style: TextStyle(fontSize: 20)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
