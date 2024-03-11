import 'package:flutter/material.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';

class PQuestionBox extends StatelessWidget {
  final String questionText;
  const PQuestionBox({
    super.key,
    required this.questionText,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.maxFinite,
          height: 100.0,
          padding: const EdgeInsets.only(bottom: 20.0),
          margin: const EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          decoration: const BoxDecoration(
            color: Color(0xFFD8D8D8),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Medicine #1',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 5.0,
            ),
            decoration: const BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            child: Center(
              child: Text(
                questionText,
                style: TextStyle(
                  color: Color(0xFFFBC423),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
