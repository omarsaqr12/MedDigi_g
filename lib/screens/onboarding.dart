import 'package:flutter/material.dart';
import 'welcome_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with TickerProviderStateMixin {
  late String welcomeMessage = "Welcome to MedDigi-G";
  late List<AnimationController> _controllers;
  late List<Animation<double>> _opacityTweens;
  late List<Animation<Offset>> _positionTweens;

  @override
  void initState() {
    super.initState();

    _controllers = List.generate(
      welcomeMessage.length,
      (index) => AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 150),
      ),
    );

    _opacityTweens = List.generate(
      welcomeMessage.length,
      (index) =>
          Tween<double>(begin: 0.0, end: 1.0).animate(_controllers[index]),
    );

    _positionTweens = List.generate(
      welcomeMessage.length,
      (index) => Tween<Offset>(
        begin: const Offset(0.0, -0.2),
        end: const Offset(0.0, 0.0),
      ).animate(_controllers[index]),
    );

    _animateWelcomeMessage(0);
  }

  void _animateWelcomeMessage(int index) {
    if (index < welcomeMessage.length) {
      _controllers[index].forward();
      Future.delayed(const Duration(milliseconds: 100), () {
        _animateWelcomeMessage(index + 1);
      });
    } else {
      Future.delayed(const Duration(milliseconds: 500), () {
        _reverseAnimation(welcomeMessage.length - 1);
      });
    }
  }

  void _reverseAnimation(int index) {
    if (index >= 0) {
      _controllers[index].reverse();
      Future.delayed(const Duration(milliseconds: 50), () {
        setState(() {});
        _reverseAnimation(index - 1);
      });
    } else {
      Future.delayed(const Duration(milliseconds: 500), () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const WelcomeScreen()),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.asset('assets/onboarding.png'),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                welcomeMessage.length,
                (index) {
                  return AnimatedBuilder(
                    animation: _controllers[index],
                    builder: (context, child) {
                      return Transform.translate(
                        offset: _positionTweens[index].value * 50,
                        child: Opacity(
                          opacity: _opacityTweens[index].value,
                          child: Text(
                            welcomeMessage[index],
                            style: const TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Gurajada',
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }
}
