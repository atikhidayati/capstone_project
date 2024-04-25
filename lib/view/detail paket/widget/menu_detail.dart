import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuDetail extends StatelessWidget {
  const MenuDetail({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Color(0xFf8bC342),
            ),
            SizedBox(width: 8),
            Text(
              'Desa Edelweis Wonokitri',
              style: GoogleFonts.inter(
                textStyle: TextStyle(color: Colors.black),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Icon(
              Icons.access_time_rounded,
              color: Color(0xFf8bC342),
            ),
            SizedBox(width: 8),
            Text(
              '1 Hari',
              style: GoogleFonts.inter(
                textStyle: TextStyle(color: Colors.black),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Icon(
              Icons.shopping_cart,
              color: Color(0xFf8bC342),
            ),
            SizedBox(width: 8),
            Text(
              '3 Kali Dipesan',
              style: GoogleFonts.inter(
                textStyle: TextStyle(color: Colors.black),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Icon(
              Icons.translate,
              color: Color(0xFf8bC342),
            ),
            SizedBox(width: 8),
            Text(
              'Tersedia dalam bahasa inggris',
              style: GoogleFonts.inter(
                textStyle: TextStyle(color: Colors.black),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
