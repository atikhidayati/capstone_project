import 'dart:io';

import 'package:capstone_project/view/widget/carousel_slider.dart';
import 'package:capstone_project/view/widget/menu_home.dart';
import 'package:capstone_project/view/widget/name_bar.dart';
import 'package:capstone_project/view/widget/searchbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            ClipPath(
              clipper: AppClipper(),
              child: Container(
                height: 250,
                color: const Color(0xFf8bC342),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      NameBar(name: HttpHeaders.authorizationHeader),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Search(),
                  const SizedBox(
                    height: 8,
                  ),
                  Carousel(),
                  const SizedBox(
                    height: 8,
                  ),
                  MenuHome(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height * 0.7);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height * 0.7);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}
