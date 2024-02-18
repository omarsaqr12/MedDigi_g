import 'package:flutter/material.dart';
import 'package:medigi_verse_g/widgets_and_constants/text_field_with_label.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import 'signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _usernameController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
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
              Image.asset('assets/logo.png'),
              const SizedBox(
                height: 30.0,
              ),
              buildTextFieldWithLabel(
                controller: _usernameController,
                labelText: 'Username:',
              ),
              const SizedBox(height: 30.0),
              buildTextFieldWithLabel(
                controller: _passwordController,
                labelText: 'Password:',
                obscureText: true,
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  //TODO: implement the logic for login authentication
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                ),
                child: const Text(
                  'Login',
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
                    'Don’t have an account?',
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
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const SignupScreen(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            const begin = 0.0;
                            const end = 1.0;
                            var tween = Tween(begin: begin, end: end);
                            var fadeAnimation = animation.drive(tween);
                            return FadeTransition(
                              opacity: fadeAnimation,
                              child: child,
                            );
                          },
                          transitionDuration: const Duration(milliseconds: 500),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      padding: const EdgeInsets.only(left: 0.0),
                      elevation: 0.0,
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          color: linkColor,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
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
