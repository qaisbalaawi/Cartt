import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final controller;
  final obscuerText;
  final hintText;
  const TextFieldWidget(
      {super.key,
      required this.controller,
      required this.obscuerText,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscuerText,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      textAlign: TextAlign.center,
    );
  }
}
