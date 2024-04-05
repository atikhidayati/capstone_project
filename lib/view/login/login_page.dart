import 'package:capstone_project/view/login/forgotpassword1.dart';
import 'package:capstone_project/view/login/register.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widget/button.dart';
import '../widget/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF222222),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //back Button
              Container(
                margin: const EdgeInsets.only(top: 80.0),
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/logotext.png',
                  height: 38,
                  width: 257,
                ),
              ), //logo
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 25.0, horizontal: 25.0),
                alignment: Alignment.topLeft,
                child: const Column(
                  mainAxisAlignment:
                      MainAxisAlignment.start, // Atur teks agar rata kiri
                  crossAxisAlignment: CrossAxisAlignment
                      .start, // Atur agar teks berada di sebelah kiri
                  children: <Widget>[
                    Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF222222)),
                    ),
                    SizedBox(height: 9),
                    Text(
                      'Please Sign in to access your account',
                      style: TextStyle(fontSize: 16, color: Color(0xFF777A77)),
                    ),
                  ],
                ),
              ),
              const Column(
                children: <Widget>[
                  CustomTextField(
                      title: 'Email', hidetitle: 'Input Your Email'),
                  SizedBox(height: 6),
                  PasswordTextField(
                    title: 'Password',
                    hidetitle: 'Input Your Password',
                  )
                ],
              ),
              Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 25.0),
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ForgotPassword1();
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
                  )),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
                child: Column(
                  children: <Widget>[
                    ButtonComponent(
                      title: "Login",
                      onPressed: () {},
                    ),
                    const SizedBox(height: 62),
                    Text.rich(
                      TextSpan(
                        text: "Don't have an account? ",
                        style: const TextStyle(color: Color(0xFF777A77)),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Register',
                            style: const TextStyle(
                              color: Color(0xFF47793C),
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterPage()),
                                );
                              },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
