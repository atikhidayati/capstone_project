import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import '../widget/button.dart';
import '../widget/textfield.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 60.0),
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/logotext.png',
                  height: 38,
                  width: 257,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 25.0),
                alignment: Alignment.topLeft,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Create Account',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF222222)),
                    ),
                    SizedBox(height: 9),
                    Text(
                      'Get the best by creating an account',
                      style: TextStyle(fontSize: 16, color: Color(0xFF777A77)),
                    ),
                  ],
                ),
              ),
              Container(
                child: const Column(
                  children: <Widget>[
                    CustomTextField(
                        title: 'Username', hidetitle: 'Enter Username'),
                    SizedBox(height: 6),
                    CustomTextField(
                        title: 'Email', hidetitle: 'Enter Your Email'),
                    SizedBox(height: 6),
                    Customphone(
                      title: 'Phone',
                      hidetitle: '',
                    ),
                    SizedBox(height: 6),
                    CustomTextField(
                        title: 'Adress', hidetitle: 'Enter Your Adress'),
                    SizedBox(height: 6),
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
                margin: const EdgeInsets.symmetric(
                    vertical: 10.30, horizontal: 25.0),
                child: Column(
                  children: <Widget>[
                    const ButtonComponent(title: "Register"),
                    const SizedBox(height: 30),
                    Text.rich(
                      TextSpan(
                        text: "Already have an account?",
                        style: const TextStyle(color: Color(0xFF777A77)),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Go Back',
                            style: const TextStyle(
                              color: Color(0xFF47793C),
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
