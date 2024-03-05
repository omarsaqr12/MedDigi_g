import 'package:flutter/material.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import 'prescriptions/medicine_name_question.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/before_questions_app_bar.dart';

class QuestionImagePage extends StatefulWidget {
  final int levelNumber;
  QuestionImagePage({required this.levelNumber});

  @override
  _QuestionImagePageState createState() => _QuestionImagePageState();
}

class _QuestionImagePageState extends State<QuestionImagePage> {
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
              BeforeQuestionsAppBar(
                buttonSize: buttonSize,
                levelNumber: widget.levelNumber,
                color: backgroundColor,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Expanded(
                //TODO: Replace this container with the image fetched form the database
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    border: Border.all(width: 1.0, color: Colors.black),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  width: double.maxFinite,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/Prescription1.png',
                      fit: BoxFit.fill,
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
                            builder: (context) => MedicineNameQuestionPage(
                                levelNumber: widget.levelNumber),
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
