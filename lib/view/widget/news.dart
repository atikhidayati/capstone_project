import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WonoNews extends StatelessWidget {
  const WonoNews({super.key, required this.img,});

  final String img;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: 220,
        child: Card(
          elevation: 7,
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(img),
                      fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Text('Budaya Tengger Dalam Geliat\nMasyarakat Lereng Gunung Bromo',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                  ),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
