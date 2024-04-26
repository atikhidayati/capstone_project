import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final String title;

  const TextWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.inter(
        textStyle: const TextStyle(color: Color(0xFf8bC342)),
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class TextTwo extends StatelessWidget {
  final String title;

  const TextTwo({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.inter(
        textStyle: const TextStyle(color: Colors.grey),
        fontSize: 10,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class TextFour extends StatelessWidget {
  final String title;

  const TextFour({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.inter(
        textStyle: const TextStyle(color: Colors.grey),
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class TextTree extends StatelessWidget {
  final String title;

  const TextTree({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.inter(
        textStyle: const TextStyle(color: Colors.black),
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}