import 'package:flutter/material.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/prescriptions/prescription_start.dart';
import '../before_questions_app_bar.dart';

class PrescriptionMainMenuPage extends StatefulWidget {
  final int levelNumber;
  PrescriptionMainMenuPage({required this.levelNumber});

  @override
  _PrescriptionMainMenuPageState createState() =>
      _PrescriptionMainMenuPageState();
}

class _PrescriptionMainMenuPageState extends State<PrescriptionMainMenuPage> {
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
                            color: kMainLevelMenuBackColor,
                          ),
                        ),
                      ),
                    ),
                    Image.asset('assets/pres_main_menu_f.png'),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Color(0xFFF7726E), Color(0xFFFBB07B)],
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
                        builder: (context) => PrescriptionStartPage(
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
