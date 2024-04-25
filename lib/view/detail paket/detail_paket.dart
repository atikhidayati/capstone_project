import 'package:capstone_project/view/detail%20paket/widget/cart_detail.dart';
import 'package:capstone_project/view/detail%20paket/widget/icon_detail.dart';
import 'package:capstone_project/view/detail%20paket/widget/menu_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPaket extends StatefulWidget {
  const DetailPaket({super.key});

  @override
  State<DetailPaket> createState() => _DetailPaketState();
}

class _DetailPaketState extends State<DetailPaket> {
  int _selectedImageIndex = 0;

  final List<String> _catPaket = [
    'https://c4.wallpaperflare.com/wallpaper/210/493/172/landscape-photography-of-green-mountains-during-day-time-wallpaper-preview.jpg',
    'https://www.goodnewsfromindonesia.id/uploads/images/2022/06/1515412022-shutterstock_15559627s76.jpg',
    'https://c4.wallpaperflare.com/wallpaper/210/493/172/landscape-photography-of-green-mountains-during-day-time-wallpaper-preview.jpg',
    'https://www.goodnewsfromindonesia.id/uploads/images/2022/06/1515412022-shutterstock_15559627s76.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Details',
          style: GoogleFonts.inter(
            textStyle: const TextStyle(color: Colors.black),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Image.network(
                    _catPaket[_selectedImageIndex],
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.9,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _catPaket.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedImageIndex = index;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 5,
                          ),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: index == _selectedImageIndex ? 2 : 1,
                                color: index == _selectedImageIndex
                                    ? Color(0xFF146ABE)
                                    : Colors.black26,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Image.network(
                              _catPaket[index],
                              width: 50,
                              height: 50,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                IconDetail(),
                SizedBox(
                  height: 8,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'IDR. 350.000',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(color: Color(0xFf8bC342)),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                MenuDetail(),
                SizedBox(
                  height: 8,
                ),
                KotakDetail(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
