import 'package:flutter/material.dart';
import 'package:medigi_verse_g/screens/home.dart';
import 'package:medigi_verse_g/screens/help.dart';
import 'package:medigi_verse_g/screens/settings.dart';
import 'package:medigi_verse_g/screens/profile.dart';

class CreateAvatarPage extends StatefulWidget {
  @override
  _CreateAvatarPageState createState() => _CreateAvatarPageState();
}

class _CreateAvatarPageState extends State<CreateAvatarPage> {
  final List<Widget> _pages = [
    HomePage(),
    HelpPage(),
    SettingsPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Avatar',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: const Color(0xFF6899A7),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AvatarWidget(
                imgString: 'female',
                textData: 'Female',
              ),
              AvatarWidget(imgString: 'male', textData: 'Male'),
            ],
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

class AvatarWidget extends StatelessWidget {
  final String imgString;
  final String textData;
  const AvatarWidget({
    Key? key,
    required this.imgString,
    required this.textData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          //TODO: implement choosing avatar
        },
        child: Column(
          children: [
            Image.asset('assets/${imgString}_avatar.png'),
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(25.0),
                ),
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              child: Center(
                child: Text(
                  textData,
                  style: const TextStyle(
                      color: Color(0xFF6899A7),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
