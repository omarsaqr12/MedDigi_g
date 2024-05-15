import 'package:flutter/material.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import 'package:medigi_verse_g/widgets_and_constants/before_questions_app_bar.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/question_image.dart';

class CasesQuestionText extends StatefulWidget {
  final int levelNumber;
  final String questionType;
  CasesQuestionText({required this.levelNumber, required this.questionType});

  @override
  _CasesQuestionTextState createState() => _CasesQuestionTextState();
}

class _CasesQuestionTextState extends State<CasesQuestionText> {
  double containerWidth = 0.85;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 40.0),
          child: Column(
            children: [
              BeforeQuestionsAppBar(
                buttonSize: kButtonSize,
                levelNumber: widget.levelNumber,
                color: backgroundColor,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    border: Border.all(width: 1.0, color: Colors.black),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  width: double.maxFinite,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 10.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //TODO: Replace this with actual questions fetched from the database
                        Text(
                          '1. ------------',
                          style: TextStyle(
                            fontFamily: 'Jockey',
                            fontSize: 30.0,
                          ),
                        ),
                        Text(
                          '2. ------------',
                          style: TextStyle(
                            fontFamily: 'Jockey',
                            fontSize: 30.0,
                          ),
                        ),
                        Text(
                          '3. ------------',
                          style: TextStyle(
                            fontFamily: 'Jockey',
                            fontSize: 30.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [backgroundColor, Color(0xFF5895B7)],
                        stops: [0.5, 0.5],
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(color: Colors.white, width: 3.0),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuestionImagePage(
                              levelNumber: widget.levelNumber,
                              questionType: widget.questionType,
                            ),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            vertical: 3.0, horizontal: 30.0),
                      ),
                      child: const Text(
                        'Next',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: kSecondaryBackgroundColor,
    );
  }
}
