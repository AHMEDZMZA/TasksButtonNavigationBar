import 'package:flutter/material.dart';

class CustomThirdContainer extends StatelessWidget {
  const CustomThirdContainer({
    super.key,
    required this.title,
    required this.onTap1,
    required this.onTap2,
    required this.number,
  });

  final String title;
  final void Function()? onTap1;
  final void Function()? onTap2;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: TextStyle(fontSize: 25, color: Colors.blueGrey)),
            Text(
              "${number.toInt()}",
              style: TextStyle(fontSize: 60, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: onTap1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF4C4F5E),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Icon(Icons.add, size: 50, color: Colors.white),
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: onTap2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF4C4F5E),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Icon(Icons.remove, size: 50, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
