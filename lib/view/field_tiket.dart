import 'package:flutter/material.dart';

import 'detail/widget/text_widget.dart';

class SelectTanggal extends StatefulWidget {
  const SelectTanggal({super.key});

  @override
  State<SelectTanggal> createState() => _SelectTanggalState();
}

class _SelectTanggalState extends State<SelectTanggal> {
  late TextEditingController dateController;

  @override
  void initState() {
    dateController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextTree(title: 'Pilih Tanggal'),
            SizedBox(
              height: 7,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: dateController,
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  hintText: '19/02/2024',
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.date_range),
                ),
                onTap: () async {
                  final DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (pickedDate != null) {
                    setState(() {
                      dateController.text = pickedDate.toString();
                    });
                  }
                },
              ),
            ),
          ],
        ));
  }
}

class JumlahOrang extends StatefulWidget {
  const JumlahOrang({super.key});

  @override
  State<JumlahOrang> createState() => _JumlahOrangState();
}

class _JumlahOrangState extends State<JumlahOrang> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 15,
          right: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextTree(title: 'Jumlah Orang'),
            SizedBox(
              height: 7,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton<String?>(
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  underline: SizedBox(),
                  isExpanded: true,
                  hint: Text('0'),
                  items: [
                    '1',
                    '2',
                    '3',
                  ]
                      .map<DropdownMenuItem<String?>>((e) => DropdownMenuItem(
                            child: Text(e.toString()),
                            value: e,
                          ))
                      .toList()),
            ),
          ],
        ));
  }
}

class TourGuide extends StatefulWidget {
  const TourGuide({super.key});

  @override
  State<TourGuide> createState() => _TourGuideState();
}

class _TourGuideState extends State<TourGuide> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 15,
          right: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextTree(title: 'Pilih Tour Guide'),
            SizedBox(
              height: 7,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton<String?>(
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  underline: SizedBox(),
                  isExpanded: true,
                  hint: Text('Pilih tour guide'),
                  items: [
                    'Syukur',
                    'Jaya',
                    'Dimas',
                  ]
                      .map<DropdownMenuItem<String?>>((e) => DropdownMenuItem(
                            child: Text(e.toString()),
                            value: e,
                          ))
                      .toList()),
            ),
          ],
        ));
  }
}

class HomeStay extends StatefulWidget {
  const HomeStay({super.key});

  @override
  State<HomeStay> createState() => _HomeStayState();
}

class _HomeStayState extends State<HomeStay> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 15,
          right: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextTree(title: 'Pilih Homestay'),
            SizedBox(
              height: 7,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton<String?>(
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  underline: SizedBox(),
                  isExpanded: true,
                  hint: Text('Pilih homestay'),
                  items: [
                    'Homestay Paimo',
                    'Homestay Pojok Bromo',
                    'Homestay Edelweiss',
                  ]
                      .map<DropdownMenuItem<String?>>((e) => DropdownMenuItem(
                            child: Text(e.toString()),
                            value: e,
                          ))
                      .toList()),
            ),
          ],
        ));
  }
}

class FotoGrafer extends StatefulWidget {
  const FotoGrafer({super.key});

  @override
  State<FotoGrafer> createState() => _FotoGraferState();
}

class _FotoGraferState extends State<FotoGrafer> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 15,
          right: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextTree(title: 'Pilih Fotografer'),
            SizedBox(
              height: 7,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton<String?>(
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  underline: SizedBox(),
                  isExpanded: true,
                  hint: Text('Pilih Fotografer'),
                  items: [
                    'Heru',
                    'Aam',
                    'Romen',
                  ]
                      .map<DropdownMenuItem<String?>>((e) => DropdownMenuItem(
                            child: Text(e.toString()),
                            value: e,
                          ))
                      .toList()),
            ),
          ],
        ));
  }
}
