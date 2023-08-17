import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double width;
  final Color color;
  final Color textColor;
  final Color borderColor;
  final bool isBorder;
  final double textSize;
  CustomButton({
    super.key,
    required this.text,
    this.width = 200,
    this.color = Colors.teal,
    this.textColor = Colors.white,
    this.isBorder = false,
    this.borderColor = Colors.teal,
    this.textSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
          border: isBorder ? Border.all(width: 2, color: borderColor) : null),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: textSize,
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
