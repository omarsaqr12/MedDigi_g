import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/question_image.dart';

class QuestionAppBar extends StatelessWidget {
  const QuestionAppBar({
    super.key,
    required this.buttonSize,
    required this.levelNumber,
  });

  final double buttonSize;
  final int levelNumber;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    QuestionImagePage(levelNumber: levelNumber),
              ),
            );
          },
          child: Icon(
            CupertinoIcons.doc_text_fill,
            size: buttonSize,
            color: const Color(0xFF18333C),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 5.0,
            horizontal: 50.0,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2.0),
            borderRadius: const BorderRadius.all(
              Radius.circular(40.0),
            ),
            color: const Color(0xFF3F6980),
          ),
          child: Text(
            'level $levelNumber',
            style: const TextStyle(color: Colors.white, fontSize: 24.0),
          ),
        ),
        Row(
          children: [
            Image.asset(
              'assets/diamond.png',
              scale: 13,
            ),
            //TODO: implement score tracking
            const SizedBox(
              width: 5.0,
            ),
            const Text(
              '10',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
