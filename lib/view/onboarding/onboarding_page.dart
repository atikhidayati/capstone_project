import 'package:capstone_project/view/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    super.initState();
  }

  Widget _buildImage(String assetName, [double width = 259]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
        bodyTextStyle: bodyStyle,
        bodyPadding: EdgeInsets.fromLTRB(30.0, 0.0, 16.0, 16.0),
        pageColor: Colors.white,
        imagePadding: EdgeInsets.zero,
        imageFlex: 2);

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Explore wonokitri",
          body:
              "Explore Wonokitri, enjoy the attractions and natural views and experience like a local",
          image: _buildImage('OnBoarding.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Tour Packages',
          body:
              "Enjoy the tour packages that have been provided and enjoy your trip",
          image: _buildImage('OnBoarding-1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Enjoy your trip",
          body:
              " with natural and cultural tourism presented by the Wonokitri tourist village",
          image: _buildImage('OnBoarding-2.png'),
          footer: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginPage();
                }));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(55),
                backgroundColor: const Color(0xFF8BC342),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'GET STARTED',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          decoration: pageDecoration,
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      back: const Text('Back',
          style:
              TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF47793C))),
      next: const Text('Next',
          style:
              TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF47793C))),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(8.0, 8.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(15.0, 5.0),
        activeColor: Color(0xFF47793C),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
