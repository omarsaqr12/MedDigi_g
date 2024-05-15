import 'package:flutter/material.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/correct_screen.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/wrong_screen.dart';

class ChoiceBox extends StatefulWidget {
  const ChoiceBox({
    Key? key,
    required this.choiceNum,
    required this.choiceName,
    required this.levelNum,
    required this.questionType,
  }) : super(key: key);

  final int choiceNum;
  final String choiceName;
  final int levelNum;
  final String questionType;

  @override
  _ChoiceBoxState createState() => _ChoiceBoxState();
}

class _ChoiceBoxState extends State<ChoiceBox> {
  Color borderColor = backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
        onPressed: () async {
          //TODO: Check for the answer implementation
          bool isCorrect = widget.choiceNum == 1;

          setState(() {
            borderColor = isCorrect ? Colors.green : Colors.red;
          });

          await Future.delayed(const Duration(seconds: 1));

          if (isCorrect) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => CorrectPage(levelNumber: widget.levelNum),
              ),
            );
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => WrongPage(levelNumber: widget.levelNum),
              ),
            );
          }
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: const Color(0xFFD8D8D8),
            border: Border.all(width: 3.0, color: borderColor),
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${widget.choiceNum}. ${widget.choiceName}',
                style: const TextStyle(
                  color: backgroundColor,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
