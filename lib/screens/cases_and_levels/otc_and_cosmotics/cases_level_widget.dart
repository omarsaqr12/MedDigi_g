import 'package:flutter/material.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/otc_and_cosmotics/cases_main_menu.dart';

class LevelWidget extends StatelessWidget {
  final int imgNumber;
  final Color containerColor;
  final int levelNumber;
  const LevelWidget({
    Key? key,
    required this.imgNumber,
    required this.containerColor,
    required this.levelNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: GestureDetector(
            onTap: () {
              //TODO: implement fetching from the database based on the level (can be obtained by imgNumber variable)
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CasesMainMenuPage(levelNumber: levelNumber),
                ),
              );
            },
            child: Image.asset(
              'assets/level$imgNumber.png',
            ),
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Expanded(
          flex: 7,
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Icon(
                    Icons.star_rounded,
                    color: Colors.white,
                    size: 35.0,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.star_rounded,
                    color: Colors.white,
                    size: 35.0,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.star_rounded,
                    color: Colors.white,
                    size: 35.0,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.star_rounded,
                    color: Colors.white,
                    size: 35.0,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.star_rounded,
                    color: Colors.white,
                    size: 35.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
