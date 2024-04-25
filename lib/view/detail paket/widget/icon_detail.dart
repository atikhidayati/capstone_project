import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconDetail extends StatefulWidget {
  const IconDetail({super.key});

  @override
  State<IconDetail> createState() => _IconDetailState();
}

class _IconDetailState extends State<IconDetail> {
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Longlivia Bromo',
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            setState(() {
              isSaved = !isSaved;
            });
          },
          child: isSaved
              ? Icon(
                  Icons.favorite,
                  color: Color(0xFf8bC342),
                )
              : Icon(
                  Icons.favorite_outline,
                  color: Color(0xFf8bC342),
                ),
        ),
        SizedBox(width: 8), // Spacer
        GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.share,
            color: Color(0xFf8bC342),
          ),
        ),
      ],
    );
  }
}
