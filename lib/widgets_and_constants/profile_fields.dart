import 'package:flutter/material.dart';

class ProfileField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;

  const ProfileField({
    Key? key,
    required this.labelText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            labelText,
            style: const TextStyle(
              color: Color(0xFFA3ADB3),
              fontSize: 17.0,
            ),
          ),
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
      ],
    );
  }
}
