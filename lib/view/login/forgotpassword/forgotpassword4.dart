import 'package:flutter/material.dart';

import '../../widget/button.dart';
import '../login_page.dart';

class ForgotPassword4 extends StatelessWidget {
  const ForgotPassword4({super.key});

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
              margin: const EdgeInsets.only(top: 37.0),
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/succes.png',
                height: 110,
                width: 110,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 11.0),
                alignment: Alignment.center,
                child: const Column(
                  children: <Widget>[
                    Text(
                      'Congrats !',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF222222),
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Your Password Changed Succesfully',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF777A77)),
                    ),
                    SizedBox(height: 12),
                  ],
                )),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: ButtonComponent(
                title: "Go back to login",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginPage();
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
