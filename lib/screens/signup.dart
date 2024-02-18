import 'package:flutter/material.dart';
import 'package:medigi_verse_g/widgets_and_constants/text_field_with_label.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
//remove this
import 'profile.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late TextEditingController _usernameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                height: 200.0,
              ),
              const SizedBox(
                height: 30.0,
              ),
              buildTextFieldWithLabel(
                controller: _usernameController,
                labelText: 'Username:',
              ),
              const SizedBox(height: 20.0),
              buildTextFieldWithLabel(
                controller: _emailController,
                labelText: 'Email:',
              ),
              const SizedBox(height: 20.0),
              buildTextFieldWithLabel(
                controller: _passwordController,
                labelText: 'Password:',
                obscureText: true,
              ),
              const SizedBox(height: 20.0),
              buildTextFieldWithLabel(
                controller: _confirmPasswordController,
                labelText: 'Confirm Password:',
                obscureText: true,
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ProfilePage();
                    }),
                  );
                  //TODO: implement signup logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: buttonColor,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      padding: const EdgeInsets.only(left: 0.0),
                      elevation: 0.0,
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: linkColor,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
