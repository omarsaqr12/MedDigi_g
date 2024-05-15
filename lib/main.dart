import 'package:flutter/material.dart';
import 'package:medigi_verse_g/screens/login.dart';
import 'package:medigi_verse_g/screens/onboarding.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import 'screens/profile.dart';
import 'screens/home.dart';
import 'screens/cases_and_levels/hint_screen.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/otc_and_cosmotics/diagnoses.dart';

void main() {
  runApp(const MedigiGame());
}

class MedigiGame extends StatelessWidget {
  const MedigiGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medigi Game',
      theme: ThemeData(
        // primaryColor: const Color(0xFF406882),
        scaffoldBackgroundColor: backgroundColor,
        fontFamily: 'Roboto',
        appBarTheme: const AppBarTheme(
          color: appBarColor,
        ),
      ),
      home: OnboardingScreen(),
    );
  }
}
