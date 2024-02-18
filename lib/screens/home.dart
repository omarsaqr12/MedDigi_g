import 'package:flutter/material.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import 'package:medigi_verse_g/widgets_and_constants/flutter-icons-0cca1d69/my_flutter_app_icons.dart';
import 'help.dart';
import 'settings.dart';
import 'profile.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/prescriptions.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/otc.dart';
import 'package:medigi_verse_g/screens/cases_and_levels/cosmotics.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    HelpPage(),
    SettingsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFD9D9D9),
                      ),
                      child: Center(
                        child: Container(
                          width: 110.0,
                          height: 110.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            border: Border.all(
                              color: Colors.black,
                              width: 3.0,
                            ),
                          ),
                          child: const Icon(
                            Icons.person_outline_rounded,
                            size: 60.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      //TODO: Make the user name displays here
                      'User Name',
                      style: TextStyle(color: Colors.white, fontSize: 22.0),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: horizontalPadding),
                child: Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Icon(
                          CategoryIcon.book,
                          size: 30.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text(
                      'Categories',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: horizontalPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CasesButtons(
                      buttonText: 'PRESCRIPTIONS',
                      pageToNavigate: PrescriptionsPage(),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    CasesButtons(
                      buttonText: 'OTC',
                      pageToNavigate: OTCPage(),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    CasesButtons(
                      buttonText: 'COSMOTICS',
                      pageToNavigate: CosmoticsPage(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          // Navigator.push(context, MaterialPageRoute(builder: (context) => YourPage()));
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => _pages[index]),
          );
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class CasesButtons extends StatelessWidget {
  final String buttonText;
  final Widget pageToNavigate;

  const CasesButtons({
    Key? key,
    required this.buttonText,
    required this.pageToNavigate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pageToNavigate),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFCBA3A4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 20.0),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(color: Colors.white, fontSize: 17.0),
      ),
    );
  }
}
