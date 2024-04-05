import 'package:capstone_project/view/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const OnboardingScreen(),
          ),
          (route) => false);
    });

    return Scaffold(
      body: Stack(children: [
        Center(
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 210,
              ),
              Image.asset(
                'assets/images/logo.png',
                height: 229,
              ),
            ],
          )),
        )
      ]),
    );
  }
}