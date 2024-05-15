import 'package:flutter/material.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/questions_app_bar.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/correct_screen.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/wrong_screen.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/prescriptions/p_question_box.dart';

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
                questionType: 'p',
              ),
              const SizedBox(
                height: 50.0,
              ),
              const PQuestionBox(questionText: 'What is the name of'),
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
