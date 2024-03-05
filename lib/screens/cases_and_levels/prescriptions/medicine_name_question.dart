import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/questions_app_bar.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/correct_screen.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/wrong_screen.dart';

class MedicineNameQuestionPage extends StatefulWidget {
  final int levelNumber;
  MedicineNameQuestionPage({required this.levelNumber});
  @override
  _MedicineNameQuestionPageState createState() =>
      _MedicineNameQuestionPageState();
}

class _MedicineNameQuestionPageState extends State<MedicineNameQuestionPage> {
  double buttonSize = kButtonSize;
  double containerWidth = 0.85;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              QuestionAppBar(
                buttonSize: buttonSize,
                levelNumber: widget.levelNumber,
              ),
              const SizedBox(
                height: 50.0,
              ),
              Stack(
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
                      child: const Center(
                        child: Text(
                          'What is the name of',
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
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          ImageChoice(
                            path: 'p_choice1.png',
                            choiceNum: 1,
                            levelNumber: widget.levelNumber,
                          ),
                          ImageChoice(
                            path: 'p_choice2.jpg',
                            choiceNum: 2,
                            levelNumber: widget.levelNumber,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          ImageChoice(
                            path: 'p_choice3.jpg',
                            choiceNum: 3,
                            levelNumber: widget.levelNumber,
                          ),
                          ImageChoice(
                            path: 'p_choice4.jpg',
                            choiceNum: 4,
                            levelNumber: widget.levelNumber,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: kSecondaryBackgroundColor,
    );
  }
}

class ImageChoice extends StatefulWidget {
  const ImageChoice({
    super.key,
    required this.path,
    required this.choiceNum,
    required this.levelNumber,
  });
  final String path;
  final int choiceNum;
  final int levelNumber;

  @override
  State createState() => _ImageChoiceState();
}

class _ImageChoiceState extends State<ImageChoice> {
  Color borderColor = backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
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
                builder: (context) =>
                    CorrectPage(levelNumber: widget.levelNumber),
              ),
            );
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    WrongPage(levelNumber: widget.levelNumber),
              ),
            );
          }
        },
        child: Container(
          height: double.maxFinite,
          decoration: BoxDecoration(
            color: const Color(0xFFD8D8D8),
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
            border: Border.all(
              color: borderColor,
              width: 5.0,
            ),
          ),
          child: ClipRRect(
            //TODO: Replace it with actual question from the database
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              'assets/${widget.path}',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
