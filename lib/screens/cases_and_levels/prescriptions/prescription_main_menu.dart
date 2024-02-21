import 'package:flutter/material.dart';
import 'package:medigi_verse_g/screens/home.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/prescriptions/prescription_question.dart';

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
    double buttonSize = 45.0;
    double containerWidth = 0.85;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Positioned(
                    left: 0,
                    child: Container(
                      width: buttonSize,
                      height: buttonSize,
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xFF01B4ED),
                            offset: Offset(0, 4.0),
                            blurRadius: 0.0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shape: const CircleBorder(),
                            elevation: 0,
                            padding: EdgeInsets.zero,
                          ),
                          child: const Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 50.0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(40.0),
                          ),
                        ),
                        child: Text(
                          'level ${widget.levelNumber}',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 24.0),
                        ),
                      ),
                    ],
                  ),
                ],
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
                            color: kmainLevelMenuBackColor,
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
                        builder: (context) => PrescriptionQuestionPage(
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
