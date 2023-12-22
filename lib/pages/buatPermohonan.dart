// ignore_for_file: library_prefixes, file_names, non_constant_identifier_names, deprecated_member_use

import 'package:bswmobile/pages/KategoriPermohonan.dart';
import 'package:bswmobile/pages/berita.dart';
import 'package:bswmobile/pages/cekPermohonan.dart';
import 'package:bswmobile/pages/home.dart';
import 'package:bswmobile/pages/login.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
      debugShowCheckedModeBanner: false,
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
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        _buildKategory(
                          text: 'Pelayanan kependudukan', 
                          image: 'pelayanan.svg', 
                          borderColor: Colors.lightBlueAccent.shade700, 
                          context: context
                        ),
                        _buildKategory(
                          text: 'Pelayanan kelurahan', 
                          image: 'pelayanan_kelurahan.svg', 
                          borderColor: Colors.blueAccent.shade700, 
                          context: context
                        )
                      ],
                    ),
                  ),
                  // SizedBox(width: 8.0), // Add some space between columns
                  Expanded(
                    child: Column(
                      children: [
                        _buildKategory(
                          text: 'Izin kesehatan', 
                          image: 'izin_kesehatan.svg', 
                          borderColor: Colors.redAccent.shade400, 
                          context: context
                        ),
                        _buildKategory(
                          text: 'Lainnya', 
                          image: 'izin_kesehatan.png', 
                          borderColor: Colors.redAccent.shade400, 
                          context: context
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }

  _buildKategory({
    required String text, 
    required String image, 
    required Color borderColor, 
    required BuildContext context,
  }){
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => KategoriPermohonan()), // Replace SecondPage() with the widget of your second page
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
        width: double.infinity,
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: borderColor, // Border color
            width: 2.5, // Border thickness
          ),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3), // Adjust the offset for the shadow
            ),
          ],
        ),
        child: Stack(
          children: [
            Opacity(
              opacity: 0.3,
              child: __imageDependencies(image)
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 6),
                child: Text(
                  text, 
                  style: TextStyle(
                    fontSize: 15.5,
                    fontWeight: FontWeight.w900,
                    height: 0.8
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget __imageDependencies(String imgExtension) {
    if (imgExtension.endsWith('.svg')) {
      return SvgPicture.asset(
        'assets/icons/$imgExtension',
        width: 100,
      );
    } else {
      return Image.asset(
        'assets/icons/$imgExtension',
        width: 100,
      );
    }
  }
}
