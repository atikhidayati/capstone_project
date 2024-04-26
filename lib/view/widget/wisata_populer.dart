
import 'package:capstone_project/view/detail/detail_wisata.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WisataPupuler extends StatelessWidget {
  const WisataPupuler({
    Key? key,
    required this.img,
  }) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: ((context) {
          return const DetailWisata();
        })));
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 130,
        child: Card(
          elevation: 7,
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      image: DecorationImage(
                        image: NetworkImage(img),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Wiantoko Homestay',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Flexible(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '4.7',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(.5),
                                  ),
                                ),
                                const SizedBox(width: 3),
                                const Icon(
                                  Icons.star,
                                  color: Color(0xFFF9B50F),
                                  size: 20,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color(0xFFF9B50F),
                                  size: 20,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color(0xFFF9B50F),
                                  size: 20,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color(0xFFF9B50F),
                                  size: 20,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color(0xFFC4C4C4),
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Spacer(),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.black.withOpacity(.3),
                              ),
                              Text(
                                'Wonokitri Pasuruan',
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  color: Colors.black.withOpacity(.3),
                                ),
                              )
                            ],
                          )
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
    );
  }
}
