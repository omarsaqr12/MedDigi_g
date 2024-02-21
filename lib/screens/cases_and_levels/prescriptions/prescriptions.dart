import 'package:flutter/material.dart';
import 'package:medigi_verse_g/screens/home.dart';
import 'package:medigi_verse_g/screens/help.dart';
import 'package:medigi_verse_g/screens/settings.dart';
import 'package:medigi_verse_g/screens/profile.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/prescriptions/prescription_main_menu.dart';

class PrescriptionsPage extends StatefulWidget {
  @override
  _PrescriptionsPageState createState() => _PrescriptionsPageState();
}

class _PrescriptionsPageState extends State<PrescriptionsPage> {
  final List<Widget> _pages = [
    HomePage(),
    HelpPage(),
    SettingsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                LevelWidget(
                  imgNumber: 1,
                  containerColor: Color(0xFFFDE256),
                  levelNumber: 1,
                ),
                LevelWidget(
                  imgNumber: 2,
                  containerColor: Color(0xFFA9D8F1),
                  levelNumber: 2,
                ),
                LevelWidget(
                  imgNumber: 3,
                  containerColor: Color(0xFFF2B764),
                  levelNumber: 3,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Help',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => _pages[index]),
          );
        },
      ),
    );
  }
}

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
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      PrescriptionMainMenuPage(levelNumber: levelNumber),
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
