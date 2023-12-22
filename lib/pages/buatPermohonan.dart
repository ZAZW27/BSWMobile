// ignore_for_file: library_prefixes, file_names, non_constant_identifier_names, deprecated_member_use

import 'package:bswmobile/pages/berita.dart';
import 'package:bswmobile/pages/cekPermohonan.dart';
import 'package:bswmobile/pages/home.dart';
import 'package:bswmobile/pages/login.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:bswmobile/utils/NavDraw.dart' as NavDraw;
// import 'package:flutter_svg/svg.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BuatPermohonan extends StatefulWidget {
  const BuatPermohonan({super.key});

  @override
  State<BuatPermohonan> createState() => _BuatPermohonanState();
}

class _BuatPermohonanState extends State<BuatPermohonan> {
  final List<Widget> screens = [
    const HomePage(),
    const Berita(),
    const BuatPermohonan(),
    const CekPermohonan(),
    const Login(),
  ];
  int bottomNavIndicator = 2;

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: _appBar(),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: bottomNavIndicator.clamp(0, 4),
            onTap: (index) {
              setState(() {
                bottomNavIndicator = index;
              });

              // Perform navigation based on the selected index
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => screens[index]),
              );
            },
            selectedItemColor: Colors.blue, // Set the selected item color
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.newspaper),
                label: 'Berita',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.crisis_alert),
                label: 'Buat permohonan',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_alert_rounded),
                label: 'Cek permohonan',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded),
                label: 'Profil',
              ),
            ],
          ),
          body: const TabBarView(
            children: [
              DataPopular(),
              DataKategori(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Container(
          margin: const EdgeInsets.only(top: 3),
          child: Image.asset(
            'assets/img/BSWblack.png',
            width: 120,
          )),
      iconTheme: const IconThemeData(color: Color.fromARGB(255, 53, 129, 192)),
      elevation: 10.0,
      backgroundColor: Colors.white,
      bottom: const TabBar(
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.black,
        indicatorColor: Colors.blue,
        tabs: [
          Tab(text: 'Popular'),
          Tab(text: 'Kategori'),
        ],
      ),
    );
  }
}

class DataPopular extends StatelessWidget {
  const DataPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topLeft,
          child: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Cari Layanan..",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      prefixIcon: Icon(Icons.search),
                      isDense: true,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 15),
                  child: Text(
                    'Pelayanan Kependudukan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: ListTileWithCircleIcon(
                        iconColor: Color.fromARGB(255, 145, 205, 255),
                        imagePath: 'assets/icons/akta-perkawinan.png',
                        text1: 'Akta Perkawinan',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: ListTileWithCircleIcon(
                        iconColor: Color.fromARGB(255, 145, 205, 255),
                        imagePath: 'assets/icons/akta-perceraian.png',
                        text1: 'Akta Perceraian',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: ListTileWithCircleIcon(
                        iconColor: Color.fromARGB(255, 145, 205, 255),
                        imagePath: 'assets/icons/pindah.png',
                        text1: 'Pindah Luar Daerah',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: ListTileWithCircleIcon(
                        iconColor: Color.fromARGB(255, 145, 205, 255),
                        imagePath: 'assets/icons/pinjamkk.png',
                        text1: 'Numpang Kartu Keluarga',
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 15),
                  child: Text(
                    'Izin Kesehatan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: ListTileWithCircleIcon(
                        iconColor: Color.fromARGB(255, 145, 205, 255),
                        imagePath: 'assets/icons/akta-perkawinan.png',
                        text1: 'Akta Perkawinan',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: ListTileWithCircleIcon(
                        iconColor: Color.fromARGB(255, 145, 205, 255),
                        imagePath: 'assets/icons/akta-perceraian.png',
                        text1: 'Akta Perceraian',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: ListTileWithCircleIcon(
                        iconColor: Color.fromARGB(255, 145, 205, 255),
                        imagePath: 'assets/icons/pindah.png',
                        text1: 'Pindah Luar Daerah',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: ListTileWithCircleIcon(
                        iconColor: Color.fromARGB(255, 145, 205, 255),
                        imagePath: 'assets/icons/pinjamkk.png',
                        text1: 'Numpang Kartu Keluarga',
                      ),
                    ),
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

class ListTileWithCircleIcon extends StatelessWidget {
  final Color iconColor;
  final String imagePath; // Add imagePath
  final String text1;

  const ListTileWithCircleIcon({
    required this.iconColor,
    required this.imagePath,
    required this.text1,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: iconColor,
        radius: 25,
        child: Image.asset(
          imagePath,
          // color: Colors.white, // You can apply color if needed
        ),
      ),
      title: Text(text1, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}

class DataKategori extends StatelessWidget {
  const DataKategori({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double squareWidth = MediaQuery.of(context).size.width / 3;

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildSquare(
                    color: Colors.white,
                    text: 'Square 1',
                    borderRadius: BorderRadius.circular(15.0),
                    squareWidth: squareWidth,
                  ),
                  _buildSquare(
                    color: Colors.white,
                    text: 'Square 2',
                    borderRadius: BorderRadius.circular(15.0),
                    squareWidth: squareWidth,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildSquare(
                    color: Colors.white,
                    text: 'Square 3',
                    borderRadius: BorderRadius.circular(15.0),
                    squareWidth: squareWidth,
                  ),
                  _buildSquare(
                    color: Colors.white,
                    text: 'Square 4',
                    borderRadius: BorderRadius.circular(15.0),
                    squareWidth: squareWidth,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSquare({
    required Color color,
    required String text,
    required BorderRadius borderRadius,
    required double squareWidth,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes the shadow direction
          ),
        ],
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: squareWidth / 2,
        vertical: squareWidth / 8,
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
