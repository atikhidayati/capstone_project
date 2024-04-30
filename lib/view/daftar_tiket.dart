import 'package:capstone_project/view/detail/widget/text_widget.dart';
import 'package:capstone_project/view/field_tiket.dart';
import 'package:capstone_project/view/widget/button.dart';

import 'package:flutter/material.dart';


import 'package:google_fonts/google_fonts.dart';

class DaftarTiket extends StatefulWidget {
  const DaftarTiket({super.key});

  @override
  State<DaftarTiket> createState() => _DaftarTiketState();
}

class _DaftarTiketState extends State<DaftarTiket> {
  bool _homeStay = false;
  bool _fotoGrafer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daftar Tiket',
          style: GoogleFonts.inter(
            textStyle: const TextStyle(color: Colors.black),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 2,
              height: 150,
              child: Card(
                margin: EdgeInsets.all(10),
                elevation: 7,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              image: NetworkImage(''),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextTree(title: 'Longlivia Bromo'),
                                TextTwo(title: '1 Hari'),
                                TextWidget(title: 'Rp. 145.000'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            SelectTanggal(),
            JumlahOrang(),
            TourGuide(),
            HomeStay(),
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _homeStay = !_homeStay;
                      });
                    },
                    child: Text(
                      '+ Tambah Homestay',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0xFf8bC342),
                        ),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  if (_homeStay) ...[
                    SizedBox(
                      height: 5,
                    ),
                    HomeStay()
                  ],
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _fotoGrafer = !_fotoGrafer;
                      });
                    },
                    child: Text(
                      '+ Tambah Fotografer',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(color: Color(0xFf8bC342)),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  if (_fotoGrafer) ...[
                    SizedBox(
                      height: 5,
                    ),
                    FotoGrafer(),
                  ]
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 15,
                right: 15,
              ),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextTree(
                      title: 'Catatan',
                    ),
                    TextTwo(
                        title:
                            '1. Tour Guide Sudah Termasuk dalam paket wisata')
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.symmetric(
                vertical: 70,
              ),
              child: ButtonComponent(
                title: 'Beli Sekarang',
              ),
            )
          ],
        ),
      ),
    );
  }
}
