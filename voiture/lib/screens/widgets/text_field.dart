import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
  super.key, 
  required this.controller,
  required this.hintText, 
  required this.obscureText
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 79, 198, 230))
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 79, 198, 230))
      ),
      fillColor: Color.fromARGB(255, 247, 246, 246),
      filled: true,
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey[500]),
    ),
  );
  }
}