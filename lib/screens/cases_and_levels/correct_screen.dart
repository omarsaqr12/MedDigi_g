import 'package:flutter/material.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/prescriptions/usage_question.dart';

class CorrectPage extends StatefulWidget {
  final int levelNumber;
  CorrectPage({required this.levelNumber});

  @override
  _CorrectPageState createState() => _CorrectPageState();
}

class _CorrectPageState extends State<CorrectPage> {
  @override
  Widget build(BuildContext context) {
    double containerWidth = 0.85;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.maxFinite,
                color: Color(0xFFc5b9b3),
                child: Center(
                  child: Text(
                    'Great',
                    style: TextStyle(
                      color: Color(0xFFC97F27),
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: FractionallySizedBox(
                        widthFactor: containerWidth,
                        heightFactor: containerWidth,
                        child: ClipOval(
                          child: Container(
                            color: kMainLevelMenuBackColor,
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/correct_screen.png',
                    ),
                  ],
                ),
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
                        //TODO: Make it navigate to the next question
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UsageQuestionPage(
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
