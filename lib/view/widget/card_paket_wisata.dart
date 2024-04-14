import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPackages extends StatefulWidget {
  const CardPackages({Key? key, required this.img}) : super(key: key);

  final String img;

  @override
  _CardPackagesState createState() => _CardPackagesState();
}

class _CardPackagesState extends State<CardPackages> {
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,
        height: 200,
        child: Card(
          elevation: 7,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(widget.img),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    Text(
                      'Javanica Bromo',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSaved = !isSaved;
                        });
                      },
                      child: Icon(
                        isSaved ? Icons.bookmark : Icons.bookmark_outline,
                        color: isSaved ? const Color(0xFF477A3B) : null,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  'IDR 450.000 / Pax',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(color: Colors.green),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
