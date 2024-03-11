import 'package:flutter/material.dart';

class QuestionBoxCases extends StatelessWidget {
  final String questionText;
  const QuestionBoxCases({
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                questionText,
                style: const TextStyle(
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
              vertical: 15.0,
            ),
            decoration: const BoxDecoration(
              color: Color(0xFFC97F27),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: null,
          ),
        ),
      ],
    );
  }
}
