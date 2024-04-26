import 'dart:math';

import 'package:capstone_project/view/detail/detail_event.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardEvent extends StatefulWidget {
  const CardEvent({
    Key? key,
    required this.img,
  }) : super(key: key);

  final String img;

  @override
  _CardEventState createState() => _CardEventState();
}

class _CardEventState extends State<CardEvent> {
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: ((context) {
          return const DetailEvent();
        })));
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .65,
        height: 200,
        child: Card(
          elevation: 7,
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width * .6,
                      height: MediaQuery.of(context).size.height * .3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(widget.img),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ClipPath(
                            clipper: EventCliper(),
                            child: Container(
                              width: 50,
                              height: 50,
                              color: Colors.orange,
                            ),
                          ),
                          Positioned(
                            top: 13,
                            right: 2.5,
                            child: Transform.rotate(
                              angle: 50 * pi / 180,
                              child: Text(
                                'Event',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      Text(
                        'Entas Entas',
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
                                Icons.bookmark,
                                color: Color(0xFF477A3B),
                              )
                            : Icon(
                                Icons.bookmark_outline,
                                color: Color(0xFF477A3B),
                              ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'IDR 450.000 / Pax',
                        style: GoogleFonts.inter(
                            textStyle:
                                const TextStyle(color: Color(0xFf8bC342)),
                            fontSize: 12),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '10 Agustus 2024',
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(color: Colors.grey),
                            fontSize: 10),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class EventCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(size.width / 2, 0)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
