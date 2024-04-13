import 'package:flutter/material.dart';

class MenuHome extends StatelessWidget {
  List catMenu = [
    "Paket Wisata",
    "Paket Event",
    "Guide",
    "Fotografer",
    "Wonokitri News",
    "Homestay",
  ];

  List<Icon> catIcons = [
    Icon(
      Icons.bus_alert,
      color: Color.fromRGBO(70, 150, 76, 1),
      size: 25,
    ),
    Icon(
      Icons.calendar_month,
      color: Color.fromRGBO(70, 150, 76, 1),
      size: 25,
    ),
    Icon(
      Icons.map,
      color: Color.fromRGBO(70, 150, 76, 1),
      size: 25,
    ),
    Icon(
      Icons.camera_enhance,
      color: Color.fromRGBO(70, 150, 76, 1),
      size: 25,
    ),
    Icon(
      Icons.scale_rounded,
      color: Color.fromRGBO(70, 150, 76, 1),
      size: 25,
    ),
    Icon(
      Icons.home,
      color: Color.fromRGBO(70, 150, 76, 1),
      size: 25,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5, left: 15, right: 15),
      child: Column(
        children: [
          GridView.builder(
              itemCount: catMenu.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.1,
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(224, 245, 180, 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: catIcons[index],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      catMenu[index],
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(70, 150, 76, 1),
                      ),
                    )
                  ],
                );
              })
        ],
      ),
    );
  }
}
