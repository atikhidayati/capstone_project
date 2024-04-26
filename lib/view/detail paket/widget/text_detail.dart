import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextDetail extends StatelessWidget {
  final String title;

  const TextDetail({
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
