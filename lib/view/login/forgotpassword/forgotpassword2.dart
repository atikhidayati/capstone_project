import 'package:flutter/material.dart';

import '../login_page.dart';

class ForgotPassword2 extends StatelessWidget {
  const ForgotPassword2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Color(0xFF222222)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 110.0),
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/logotext.png',
                height: 38,
                width: 257,
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: const Text(
                'we send 4 digit code to askalks@gmail.com',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF777A77)),
              ),
            ),
            Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 25.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LoginPage();
                    }));
                  },
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF47793C),
                    ),
                  ),
                ))
          ],
        )));
  }
}
