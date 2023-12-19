import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const Mytextfield({
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
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),

        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0)
        ),
        fillColor: Colors.grey,
        filled: true,
        hintText: hintText, hintStyle: TextStyle(
        color: Colors.white
      ),
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
      ),
    );

  }
}
