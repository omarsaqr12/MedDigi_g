import 'package:flutter/material.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import 'package:medigi_verse_g/widgets_and_constants/before_questions_app_bar.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/otc_and_cosmotics/cases_start.dart';

class CasesMainMenuPage extends StatefulWidget {
  final int levelNumber;
  final String questionType;
  CasesMainMenuPage({required this.levelNumber, required this.questionType});

  @override
  _CasesMainMenuPageState createState() => _CasesMainMenuPageState();
}

class _CasesMainMenuPageState extends State<CasesMainMenuPage> {
  @override
  Widget build(BuildContext context) {
    double buttonSize = kButtonSize;
    double containerWidth = 0.85;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BeforeQuestionsAppBar(
                  buttonSize: buttonSize, levelNumber: widget.levelNumber),
              Expanded(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: FractionallySizedBox(
                        widthFactor: containerWidth,
                        heightFactor: containerWidth,
                        child: ClipOval(
                          child: Container(
                            color: const Color(0xFFDFA45D),
                          ),
                        ),
                      ),
                    ),
                    Image.asset('assets/cases_main_menu.png'),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Color(0xFFF0A247), Color(0xFFF7C767)],
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
                        builder: (context) => CasesStartPage(
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
                    'Play',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
