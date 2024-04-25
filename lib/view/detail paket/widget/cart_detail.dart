import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KotakDetail extends StatelessWidget {
  const KotakDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            color: Color(0xFf8bC342),
            borderRadius: BorderRadius.circular(8), // Radius border
          ),
          child: Center(
            child: Text(
              'Keluarga',
              style: GoogleFonts.inter(
                textStyle: TextStyle(color: Colors.white),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            color: Color(0xFf8bC342),
            borderRadius: BorderRadius.circular(8), // Radius border
          ),
          child: Center(
            child: Text(
              'Keluarga Besar',
              style: GoogleFonts.inter(
                textStyle: TextStyle(color: Colors.white),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            color: Color(0xFf8bC342),
            borderRadius: BorderRadius.circular(8), // Radius border
          ),
          child: Center(
            child: Text(
              'Keluarga Kecil',
              style: GoogleFonts.inter(
                textStyle: TextStyle(color: Colors.white),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
