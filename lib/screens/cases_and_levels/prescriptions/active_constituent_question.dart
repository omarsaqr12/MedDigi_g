import 'package:flutter/material.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/prescriptions/p_question_box.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/questions_app_bar.dart';
import 'package:medigi_verse_g/widgets_and_constants/choice-box.dart';

class ActiveConstiuentPage extends StatefulWidget {
  final int levelNumber;
  ActiveConstiuentPage({required this.levelNumber});
  @override
  _ActiveConstiuentPageState createState() => _ActiveConstiuentPageState();
}

class _ActiveConstiuentPageState extends State<ActiveConstiuentPage> {
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
              const PQuestionBox(questionText: 'What is the active agent of'),
              const SizedBox(
                height: 50.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ChoiceBox(
                      choiceNum: 1,
                      choiceName: 'Chymotrypsin-Trypsin',
                      levelNum: widget.levelNumber,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ChoiceBox(
                      choiceNum: 2,
                      choiceName: 'Acetylsalicylic Acid',
                      levelNum: widget.levelNumber,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ChoiceBox(
                      choiceNum: 3,
                      choiceName: 'Pepsin',
                      levelNum: widget.levelNumber,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ChoiceBox(
                      choiceNum: 4,
                      choiceName: 'Bacitracin',
                      levelNum: widget.levelNumber,
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
