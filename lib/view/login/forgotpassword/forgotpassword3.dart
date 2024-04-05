import 'package:capstone_project/view/login/forgotpassword/forgotpassword4.dart';
import 'package:flutter/material.dart';

import '../../widget/button.dart';
import '../../widget/textfield.dart';

class ForgotPassword3 extends StatelessWidget {
  const ForgotPassword3({super.key});

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
              margin:
                  const EdgeInsets.symmetric(vertical: 40.2, horizontal: 10.0),
              child: const Column(
                children: <Widget>[
                  PasswordTextField(
                    title: 'Password',
                    hidetitle: 'Input Your Password',
                  ),
                  SizedBox(height: 6),
                  PasswordTextField(
                    title: 'Confirm Password',
                    hidetitle: 'Input Your Password',
                  )
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 0.2, horizontal: 10.0),
              child: ButtonComponent(
                title: "Set New Password",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ForgotPassword4();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
