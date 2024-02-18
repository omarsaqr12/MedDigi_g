import 'package:flutter/material.dart';

Widget buildTextFieldWithLabel({
  required TextEditingController controller,
  required String labelText,
  bool obscureText = false,
}) {
  return TextField(
    controller: controller,
    obscureText: obscureText,
    cursorColor: const Color(0xFF6998AB),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 15.0,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      prefixIcon: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 5.0),
        child: IntrinsicWidth(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              labelText,
              style: const TextStyle(
                color: Color(0xFF6998AB),
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
