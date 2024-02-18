import 'package:flutter/material.dart';
import 'package:medigi_verse_g/widgets_and_constants/constants.dart';
import 'login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;
            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 500),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Image.asset('assets/welcome.png'),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
            child: const Text(
              'MEdDIGI',
              style: TextStyle(
                fontSize: 40.0,
                color: Color(0xFF73C2EE),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 80.0,
          ),
          const Text(
            'Where you can boost your medical journey',
            style: TextStyle(
              color: buttonColor,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Jockey',
            ),
          ),
        ],
      ),
    );
  }
}
