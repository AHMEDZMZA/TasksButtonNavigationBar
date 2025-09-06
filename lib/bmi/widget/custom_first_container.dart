import 'package:flutter/material.dart';

class CustomFirstContainer extends StatelessWidget {
  const CustomFirstContainer({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
    this.color,
  });

  final IconData icon;
  final String text;
  final void Function()? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 100, color: Colors.white),
              SizedBox(height: 10),
              Text(text, style: TextStyle(fontSize: 20, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
