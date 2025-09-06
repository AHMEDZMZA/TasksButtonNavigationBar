import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        margin: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Color(0xFFEB1555),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
