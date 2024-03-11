import 'package:flutter/material.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/questions_app_bar.dart';
import 'package:medigi_verse_g/widgets_and_constants/choice-box.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/otc_and_cosmotics/question_box.dart';

class DiagnosisPage extends StatefulWidget {
  final int levelNumber;
  DiagnosisPage({required this.levelNumber});
  @override
  _DiagnosisPageState createState() => _DiagnosisPageState();
}

class _DiagnosisPageState extends State<DiagnosisPage> {
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
              const QuestionBoxCases(
                questionText: 'What is your diagnosis?',
              ),
              const SizedBox(
                height: 50.0,
              ),
              //TODO: fetch the choices of the corresponding question
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ChoiceBox(
                      choiceNum: 1,
                      choiceName: 'Anti-inflamatory',
                      levelNum: widget.levelNumber,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ChoiceBox(
                      choiceNum: 2,
                      choiceName: 'Treating headaches',
                      levelNum: widget.levelNumber,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ChoiceBox(
                      choiceNum: 3,
                      choiceName: 'treating colds',
                      levelNum: widget.levelNumber,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ChoiceBox(
                      choiceNum: 4,
                      choiceName: 'treating allergies',
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
