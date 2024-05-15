import 'package:flutter/material.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/questions_app_bar.dart';
import 'package:medigi_verse_g/widgets_and_constants/choice-box.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/otc_and_cosmotics/question_box.dart';

class TreatmentPage extends StatefulWidget {
  final int levelNumber;
  final String questionType;
  TreatmentPage({required this.levelNumber, required this.questionType});
  @override
  _TreatmentPageState createState() => _TreatmentPageState();
}

class _TreatmentPageState extends State<TreatmentPage> {
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
                buttonSize: kButtonSize,
                levelNumber: widget.levelNumber,
                questionType: widget.questionType,
              ),
              const SizedBox(
                height: 50.0,
              ),
              const QuestionBoxCases(
                questionText: 'What is the treatment?',
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
                      questionType: '',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ChoiceBox(
                      choiceNum: 2,
                      choiceName: 'Treating headaches',
                      levelNum: widget.levelNumber,
                      questionType: '',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ChoiceBox(
                      choiceNum: 3,
                      choiceName: 'treating colds',
                      levelNum: widget.levelNumber,
                      questionType: '',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ChoiceBox(
                      choiceNum: 4,
                      choiceName: 'treating allergies',
                      levelNum: widget.levelNumber,
                      questionType: '',
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
