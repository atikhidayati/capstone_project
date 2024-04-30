import 'package:capstone_project/view/daftar_tiket.dart';
import 'package:capstone_project/view/detail/widget/cart_detail.dart';
import 'package:capstone_project/view/detail/widget/icon_detail.dart';
import 'package:capstone_project/view/detail/widget/menu_detail.dart';
import 'package:capstone_project/view/detail/widget/text_widget.dart';
import 'package:capstone_project/view/widget/button.dart';

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
    'https://i.pinimg.com/564x/59/b9/54/59b954761d1eb3fcbbbe534ea254bc90.jpg',
    'https://c4.wallpaperflare.com/wallpaper/210/493/172/landscape-photography-of-green-mountains-during-day-time-wallpaper-preview.jpg',
    'https://i.pinimg.com/564x/59/b9/54/59b954761d1eb3fcbbbe534ea254bc90.jpg',
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
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          _catPaket[_selectedImageIndex],
                        ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
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
                                width: index == _selectedImageIndex ? 1 : 1,
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
                  children: [TextWidget(title: 'IDR. 350.000')],
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
                        title: '1 Hari', menuIcon: Icons.access_time_rounded),
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
                    Text(''),
                  ],
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  margin: const EdgeInsets.symmetric(
                    vertical: 70,
                  ),
                  child: ButtonComponent(
                    title: 'Beli Paket',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const DaftarTiket();
                      }));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
