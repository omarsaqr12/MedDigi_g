import 'package:flutter/material.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/prescriptions/usage_question.dart';

class HintPage extends StatefulWidget {
  final int levelNumber;
  HintPage({required this.levelNumber});

  @override
  _HintPageState createState() => _HintPageState();
}

class _HintPageState extends State<HintPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                width: double.maxFinite,
                color: const Color(0xFFF6726E),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 20.0,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        )),
                    child: const Text(
                      'Hint',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 10.0,
                      ),
                      child: FractionallySizedBox(
                        child: ClipOval(
                          child: Container(
                            color: kSecondaryColor,
                            child: const Center(
                              child: Text(
                                'Hint Text',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Color(0xFF5895B7), backgroundColor],
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
                        'Try again',
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
