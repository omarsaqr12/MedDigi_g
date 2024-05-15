import 'package:flutter/material.dart';
import 'package:medigi_verse_g/screens/home.dart';
import 'package:medigi_verse_g/screens/help.dart';
import 'package:medigi_verse_g/screens/settings.dart';
import 'package:medigi_verse_g/screens/profile.dart';
import 'package:medigi_verse_g/widgets_and_constants/level_widget.dart';

class CosmoticsPage extends StatefulWidget {
  @override
  _CosmoticsPageState createState() => _CosmoticsPageState();
}

class _CosmoticsPageState extends State<CosmoticsPage> {
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
                  questionType: 'c',
                ),
                LevelWidget(
                  imgNumber: 2,
                  containerColor: Color(0xFFA9D8F1),
                  levelNumber: 2,
                  questionType: 'c',
                ),
                LevelWidget(
                  imgNumber: 3,
                  containerColor: Color(0xFFF2B764),
                  levelNumber: 3,
                  questionType: 'c',
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
