import 'package:flutter/material.dart';
import 'package:medigi_verse_g/screens/home.dart';
import 'package:medigi_verse_g/screens/help.dart';
import 'package:medigi_verse_g/screens/settings.dart';
import 'package:medigi_verse_g/screens/profile.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/otc_and_cosmotics/cases_level_widget.dart';

class OTCPage extends StatefulWidget {
  @override
  _OTCPageState createState() => _OTCPageState();
}

class _OTCPageState extends State<OTCPage> {
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
