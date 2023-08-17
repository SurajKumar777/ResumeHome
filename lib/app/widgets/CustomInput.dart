import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomInput extends StatelessWidget {
  final String? prifixIcon;
  final String hintText;
  final bool isNum;
  final bool isSecure;
  final double? inputFontSize;
  final InputBorder? border;
  String? Function(String?)? validation;
  TextEditingController controller;
  final bool bold;

  CustomInput({
    super.key,
    this.prifixIcon,
    required this.hintText,
    required this.controller,
    this.isNum = false,
    this.isSecure = false,
    required this.validation,
    this.inputFontSize = 16,
    this.border,
    this.bold = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
          fontSize: inputFontSize, fontWeight: bold ? FontWeight.bold : null),
      controller: controller,
      maxLines: null,
      keyboardType: isNum ? TextInputType.phone : TextInputType.text,
      obscureText: isSecure,
      decoration: InputDecoration(
        hintText: hintText,
        border: border,
      ),
      validator: validation,
    );
  }
}
