import 'package:flutter/material.dart';
import 'package:medigi_verse_g/screens/help.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import 'package:medigi_verse_g/screens/profile.dart';
import 'package:medigi_verse_g/screens/change_password.dart';
import 'package:medigi_verse_g/screens/create_avatar.dart';
import 'package:medigi_verse_g/screens/login.dart';
import 'package:medigi_verse_g/screens/home.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  BorderSide side = const BorderSide(
    color: kborderBottom,
    width: 1.0,
  );

  bool notificationToggle =
      true; //TODO: use this variable to make the toggle switch work

  int _currentIndex = 2;
  final List<Widget> _pages = [
    HomePage(),
    HelpPage(),
    SettingsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              backgroundColor,
              Colors.white,
            ],
            stops: [0.4, 0.4],
          ),
        ),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.settings_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        decoration: BoxDecoration(border: Border(bottom: side)),
                        child: Row(
                          children: [
                            Container(
                              width: 60.0,
                              height: 60.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFD9D9D9),
                              ),
                              child: Center(
                                child: Container(
                                  width: 45.0,
                                  height: 45.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.transparent,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.person_outline_rounded,
                                    size: 30.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            const Text(
                              'user Name',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 15.0, top: 10.0),
                        decoration: BoxDecoration(border: Border(bottom: side)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0, top: 10.0),
                              child: Text(
                                'Account Settings',
                                style: TextStyle(
                                  color: ksecondryTextColor,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SettingsOptionWidget(
                              textData: 'Edit Profile',
                              pageToNavigate: ProfilePage(),
                            ),
                            SettingsOptionWidget(
                              textData: 'Change Password',
                              pageToNavigate: ChangePasswordPage(),
                            ),
                            SettingsOptionWidget(
                              textData: 'Create My Avatar',
                              pageToNavigate: CreateAvatarPage(),
                            ),
                            // Add toggle switch
                            ListTile(
                              tileColor: Colors.transparent,
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              title: const Text(
                                'Receive Notifications',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              trailing: Switch(
                                value: notificationToggle,
                                onChanged: (value) {
                                  setState(() {
                                    notificationToggle = value;
                                  });
                                },
                                trackOutlineColor:
                                    MaterialStateColor.resolveWith(
                                  (states) => Colors.transparent,
                                ),
                                activeTrackColor: const Color(0xFF0075ff),
                                inactiveTrackColor: const Color(0xFFEAEAEA),
                                activeColor: Colors.white,
                                inactiveThumbColor: Colors.white,
                                thumbColor:
                                    MaterialStateProperty.resolveWith((states) {
                                  return Colors.white;
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0, top: 10.0),
                              child: Text(
                                'More',
                                style: TextStyle(
                                  color: ksecondryTextColor,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                //TODO: implement logout functionality
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()),
                                );
                              },
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Logout',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 17.0),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16.0,
                                  ),
                                ],
                              ),
                            ),
                            SettingsOptionWidget(
                                textData: 'About Us',
                                pageToNavigate: HelpPage())
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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

class SettingsOptionWidget extends StatelessWidget {
  final String textData;
  final Widget pageToNavigate;

  const SettingsOptionWidget({
    Key? key,
    required this.textData,
    required this.pageToNavigate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pageToNavigate),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textData,
            style: const TextStyle(color: Colors.black, fontSize: 17.0),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 16.0,
          ),
        ],
      ),
    );
  }
}
