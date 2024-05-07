import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final controller;
  final obscuerText;
  final hintText;
  final validator;
  const TextFieldWidget(
      {super.key,
      required this.controller,
      required this.obscuerText,
      required this.hintText, 
      required String? Function(dynamic value)this.validator, String? errorText,});

  @override
  Widget build(BuildContext context) {
    return Form(
      
      child: TextFormField(
        
        validator: validator,
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
      ),
    );
  }
}
