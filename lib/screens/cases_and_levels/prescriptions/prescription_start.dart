import 'package:flutter/material.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import '../question_image.dart';
import '../../../widgets_and_constants/before_questions_app_bar.dart';

class PrescriptionStartPage extends StatefulWidget {
  final int levelNumber;
  PrescriptionStartPage({required this.levelNumber});

  @override
  _PrescriptionStartPageState createState() => _PrescriptionStartPageState();
}

class _PrescriptionStartPageState extends State<PrescriptionStartPage> {
  @override
  Widget build(BuildContext context) {
    double buttonSize = kButtonSize;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BeforeQuestionsAppBar(
                buttonSize: buttonSize,
                levelNumber: widget.levelNumber,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
                decoration: const BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: const Column(
                  children: [
                    Text(
                      'Read the following Prescription',
                      style: TextStyle(fontSize: 28.0, fontFamily: 'Gurajada'),
                    ),
                    Text(
                      'Answer each question',
                      style: TextStyle(fontSize: 28.0, fontFamily: 'Gurajada'),
                    ),
                    Text(
                      'feel free to go back to the prescription again',
                      style: TextStyle(fontSize: 28.0, fontFamily: 'Gurajada'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      const Positioned(
                        right: 0,
                        top: 0,
                        bottom: 0,
                        child: Image(
                          image: AssetImage('assets/pres_question_f.png'),
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
                                builder: (context) => QuestionImagePage(
                                  levelNumber: widget.levelNumber,
                                  questionType: 'p',
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
                            'Start',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
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
