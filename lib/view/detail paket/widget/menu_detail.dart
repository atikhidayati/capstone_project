import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuDetail extends StatelessWidget {
  final String title;
  final IconData menuIcon; // Mengubah tipe data menjadi IconData

  const MenuDetail({
    Key? key,
    required this.title,
    required this.menuIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Icon( // Menggunakan widget Icon untuk menampilkan ikon
              menuIcon,
              color: Color(0xFF8BC342), // Format warna menjadi 0xFF (RGBA)
            ),
            SizedBox(width: 8),
            Text(
              title,
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
