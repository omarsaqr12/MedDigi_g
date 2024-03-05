import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/questions_app_bar.dart';
import 'package:medigi_verse_g/widgets_and_constants/choice-box.dart';

class UsageQuestionPage extends StatefulWidget {
  final int levelNumber;
  UsageQuestionPage({required this.levelNumber});
  @override
  _UsageQuestionPageState createState() => _UsageQuestionPageState();
}

class _UsageQuestionPageState extends State<UsageQuestionPage> {
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
                          'What is the usage of',
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
              const SizedBox(
                height: 50.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ChoiceBox(
                      choiceNum: 1,
                      choiceName: 'Anti-inflamatory',
                      levelNum: widget.levelNumber,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ChoiceBox(
                      choiceNum: 2,
                      choiceName: 'Treating headaches',
                      levelNum: widget.levelNumber,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ChoiceBox(
                      choiceNum: 3,
                      choiceName: 'treating colds',
                      levelNum: widget.levelNumber,
                    ),
                    SizedBox(
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
