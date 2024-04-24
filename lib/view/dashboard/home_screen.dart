import 'dart:io';

import 'package:capstone_project/view/widget/card_paket_wisata.dart';
import 'package:capstone_project/view/widget/carousel_slider.dart';
import 'package:capstone_project/view/widget/menu_home.dart';
import 'package:capstone_project/view/widget/name_bar.dart';
import 'package:capstone_project/view/widget/news.dart';
import 'package:capstone_project/view/widget/searchbar.dart';
import 'package:capstone_project/view/widget/wisata_populer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/card_event.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Paket Wisata Terbaik',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Color(0xFF222222),
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                        itemCount: 20,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CardPackages(
                            img:
                                'https://c4.wallpaperflare.com/wallpaper/210/493/172/landscape-photography-of-green-mountains-during-day-time-wallpaper-preview.jpg',
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Rayakan Event Terbaik',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Color(0xFF222222),
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                      itemCount: 20,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CardEvent(
                          img:
                              'https://c4.wallpaperflare.com/wallpaper/210/493/172/landscape-photography-of-green-mountains-during-day-time-wallpaper-preview.jpg',
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Tempat Wisata Populer',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Color(0xFF222222),
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  SizedBox(
                    height: 550,
                    child: ListView.builder(
                      // harusnya pakai stream builder nanti pean atur aja pake stream builder biar real time, saya kayak di atas pokok nya di home ini pake stream bulider jangan listview builder
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return const WisataPupuler(
                          img:
                          'https://c4.wallpaperflare.com/wallpaper/210/493/172/landscape-photography-of-green-mountains-during-day-time-wallpaper-preview.jpg',
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text(
                    'Wonokitri News',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Color(0xFF222222),
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                      itemCount: 20,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return WonoNews(
                          img:
                          'https://www.goodnewsfromindonesia.id/uploads/images/2022/06/1515412022-shutterstock_15559627s76.jpg',
                        );
                      },
                    ),
                  ),
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
    return true;
  }
}
