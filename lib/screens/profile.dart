import 'package:flutter/material.dart';
import 'dart:io';
import 'home.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medigi_verse_g/widgets_and_constants/profile_fields.dart';
import 'package:medigi_verse_g/screens/settings.dart';
import 'package:medigi_verse_g/screens/help.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _currentIndex = 3;
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
          padding: const EdgeInsets.all(16.0),
          child: ProfileForm(),
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

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController universityController = TextEditingController();
  TextEditingController levelController = TextEditingController();
  TextEditingController statusController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: () async {
              final pickedFile =
                  await ImagePicker().pickImage(source: ImageSource.gallery);

              if (pickedFile != null) {
                setState(() {
                  _selectedImage = File(pickedFile.path);
                });
              }
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFD9D9D9),
                  ),
                  child: _selectedImage != null
                      ? ClipOval(
                          child: Image.file(
                            _selectedImage!,
                            width: 80.0,
                            height: 80.0,
                            fit: BoxFit.cover,
                          ),
                        )
                      : Center(
                          child: Container(
                            width: 60.0,
                            height: 60.0,
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
                              size: 40.0,
                            ),
                          ),
                        ),
                ),
                const SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // User Name
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 50.0,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: const Text(
                        //TODO: make the user name appear here
                        'Username',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    // User Email
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        //TODO: make the user email appear here
                        'user@example.com',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        //TODO: Handle edit password button press
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        padding: const EdgeInsets.only(left: 10.0),
                        elevation: 0.0,
                      ),
                      child: const Text(
                        'Edit Password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          // Full Name Input Field
          ProfileField(
            labelText: 'Full Name:',
            controller: fullNameController,
          ),
          // University Input Field
          ProfileField(
            labelText: 'University:',
            controller: universityController,
          ),
          // Level Input Field
          ProfileField(
            labelText: 'Level:',
            controller: levelController,
          ),
          // Status Input Field
          ProfileField(
            labelText: 'Status:',
            controller: statusController,
          ),
          // Address Input Field
          ProfileField(
            labelText: 'Address:',
            controller: addressController,
          ),
          ProfileField(
            labelText: 'Phone number:',
            controller: numberController,
          ),
          const SizedBox(height: 16.0),
          // Save Button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  //TODO: Implement save logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6899A7),
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 20.0),
                ),
                child: const Text(
                  'Save',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
