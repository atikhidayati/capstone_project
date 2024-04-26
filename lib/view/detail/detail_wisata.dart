import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widget/cart_detail.dart';
import 'widget/icon_detail.dart';
import 'widget/menu_detail.dart';
import 'widget/text_widget.dart';

class DetailWisata extends StatelessWidget {
  const DetailWisata({super.key});

  @override
  Widget build(BuildContext context) {
    int _selectedImageIndex = 0;

    final List<String> _catPaket = [
      'https://c4.wallpaperflare.com/wallpaper/210/493/172/landscape-photography-of-green-mountains-during-day-time-wallpaper-preview.jpg',
      'https://i.pinimg.com/564x/59/b9/54/59b954761d1eb3fcbbbe534ea254bc90.jpg',
      'https://c4.wallpaperflare.com/wallpaper/210/493/172/landscape-photography-of-green-mountains-during-day-time-wallpaper-preview.jpg',
      'https://i.pinimg.com/564x/59/b9/54/59b954761d1eb3fcbbbe534ea254bc90.jpg',
    ];

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
                IconDetail(),
                SizedBox(
                  height: 8,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [TextWidget(title: 'Rp. 150.000')],
                ),
                SizedBox(
                  height: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MenuDetail(
                        title: 'Desa Edelweis Wonokitri',
                        menuIcon: Icons.location_on_outlined),
                    MenuDetail(
                        title: '31 Agustus 2024',
                        menuIcon: Icons.access_time_rounded),
                    MenuDetail(
                        title: '3 Kali Dipesan', menuIcon: Icons.shopping_cart),
                    MenuDetail(
                        title: 'Terdesia dalam bahasa Inggris',
                        menuIcon: Icons.translate),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    KotakDetail(title: 'Keluarga'),
                    KotakDetail(title: 'Keluarga Kecil'),
                    KotakDetail(title: 'Keluarga besar'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Informasi Detail',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(color: Colors.black),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(''),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Harap Diperhatikan',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(color: Colors.black),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(''),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Informasi Tambahan',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(color: Colors.black),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextTwo(
                      title: '1. Membawah Jaket Tebal',
                    ),
                    TextTwo(
                        title:
                            '2. Membawah obat-obatan bagi penderita penyakit khusus')
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
