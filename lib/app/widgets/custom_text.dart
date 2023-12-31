import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final bool bold;
  final TextAlign? textAlign;
  Color color;
  CustomText({
    super.key,
    required this.text,
    this.size = 12.0,
    this.bold = false,
    this.color = Colors.black,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: bold == true ? FontWeight.bold : null,
      ),
    );
  }
}
