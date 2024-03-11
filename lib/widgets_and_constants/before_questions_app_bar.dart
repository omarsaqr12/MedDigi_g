import 'package:flutter/material.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import 'package:medigi_verse_g/screens/home.dart';

class BeforeQuestionsAppBar extends StatelessWidget {
  const BeforeQuestionsAppBar({
    super.key,
    required this.buttonSize,
    required this.levelNumber,
    this.color,
  });

  final double buttonSize;
  final int levelNumber;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Stack(
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
                  backgroundColor: color ?? backgroundColor,
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
                color: color ?? backgroundColor,
              ),
              child: Text(
                'level $levelNumber',
                style: const TextStyle(color: Colors.white, fontSize: 24.0),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
