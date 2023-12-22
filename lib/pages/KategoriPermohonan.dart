// ignore_for_file: library_prefixes, file_names, non_constant_identifier_names, deprecated_member_use

import 'package:bswmobile/pages/berita.dart';
import 'package:bswmobile/pages/cekPermohonan.dart';
import 'package:bswmobile/pages/home.dart';
import 'package:bswmobile/pages/login.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:bswmobile/utils/NavDraw.dart' as NavDraw;
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class KategoriPermohonan extends StatefulWidget {
  const KategoriPermohonan({super.key});

  @override
  State<KategoriPermohonan> createState() => _KategoriPermohonanState();
}



class DataLayanan {
  final String judul;
  final String image;

  DataLayanan({
    required this.judul, 
    required this.image, 
  });
}

final List<DataLayanan> dataLayananModel = [
  DataLayanan(judul: 'Akta kematian', image: 'akta-kematian.png'), 
  DataLayanan(judul: 'Akta perkawinan', image: 'akta-perkawinan.png'), 
  DataLayanan(judul: 'Akta perceraian', image: 'akta-perceraian.png'), 
  DataLayanan(judul: 'Perubahan biodata', image: 'biodata.png'), 
  DataLayanan(judul: 'Pindah luar daerah', image: 'pindah.png'), 
  DataLayanan(judul: 'Perubahan alamat', image: 'perubahan-alamat.png'), 
  DataLayanan(judul: 'Batal pindah luar daerah', image: 'pindah.png'), 
  DataLayanan(judul: 'Penduduk pendatang luar daerah', image: 'pendatang.png'), 
  DataLayanan(judul: 'Numpang kartu keluarga', image: 'pinjamkk.png'), 
];


class DataLayananJenis {
  final String judul;
  final String initial;

  DataLayananJenis({
    required this.judul, 
    required this.initial,
  });
}

final List<DataLayananJenis> dataLayananJenisModel = [
  DataLayananJenis(judul: 'Pelayanan Kependudukan', initial: 'PK'), 
  DataLayananJenis(judul: 'Izin Kesehatan', initial: 'IP'), 
  DataLayananJenis(judul: 'Pelayanan Kelurahan', initial: 'PK'), 
  DataLayananJenis(judul: 'Lainnya', initial: 'L'), 
];



class _KategoriPermohonanState extends State<KategoriPermohonan> {
  int bannerSlideIndicator = 0;

  final List<Widget> screens = [
    HomePage(), 
    Berita(),
    KategoriPermohonan(),
    CekPermohonan(),
    Login(),
  ];
  int bottomNavIndicator = 2;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
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
        items: [
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
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF3F4F6)
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 18),
              child: Stack(
                children: [
                  _CarouselBanner(screenWidth),
                  Container(
                    margin: EdgeInsets.only(top: screenWidth < 600 ? 250 : 300),
                    child: SizedBox(
                      width: screenWidth,
                      // decoration: BoxDecoration(color: Colors.red.withOpacity(0.3)),
                      child: Center(
                        child: Container(
                          // height: 300,
                          width: 1000,
                          padding: EdgeInsets.symmetric(vertical: screenWidth < 600 ? 20 : 40, horizontal: screenWidth < 600 ? 8 : screenWidth > 900 ? 60:20),
                          constraints: const BoxConstraints(maxWidth: 1000),
                          decoration: BoxDecoration(
                            color: Colors.white, 
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(screenWidth < 600 ? 30:80), 
                              topRight: Radius.circular(screenWidth < 600 ? 30:80), 
                            )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Transform.translate(
                                offset: Offset(0, -130),
                                child: Container(
                                  width: double.infinity , // Set your desired width for the container
                                  margin: const EdgeInsets.symmetric(horizontal: 12),
                                  padding: const EdgeInsets.only(bottom: 24),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 252, 255, 255),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(90, 50, 45, 93), // Change the shadow color as needed
                                        offset: Offset(0.0, 0.0),
                                        blurRadius: 10.0, // Adjust the blur radius to control the intensity of the shadow
                                        spreadRadius: -2.0, // Negative spread radius for inner shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20), 
                                      topRight: Radius.circular(20), 
                                      bottomLeft: Radius.circular(5), 
                                      bottomRight: Radius.circular(5), 
                                    )
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(bottom: 20),
                                        width: double.infinity,
                                        // height: 50,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [Colors.lightBlue.shade400, Colors.blueAccent.shade700], // Adjust colors as needed
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                          ), 
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(20), 
                                            topRight: Radius.circular(20), 
                                          )
                                        ),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                                          child: const Center(
                                            child: Text(
                                              'Pelayanan kependudukan',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700
                                              ),
                                            ),
                                          ),
                                        ),
                                      ), 
                                      Center(
                                        child: Wrap(
                                          spacing: 18.0, // Horizontal space between children
                                          // runSpacing: 12.0, // Vertical space between lines of children
                                          children: dataLayananModel.map((layanan) {
                                            return _layananVariant(layanan, screenWidth);
                                          }).toList(),
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                              ),
                            ]
                          ),
                        ),
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

  Flexible _layananVariant(DataLayanan layanan, double screenWidth) {
    return Flexible(
      child: Container(
        decoration: const BoxDecoration(
          // color: Colors.red.withOpacity(0.6)
        ),
        height: 120,
        width: screenWidth < 600 ? 50 : 70,
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/icons/${layanan.image}',
                width: screenWidth < 600 ? 45:60,
              ),
              const SizedBox(height: 4,),
              Text(
                '${layanan.judul.substring(0, 10)}...',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget buildLayananModel(String initial, String judul, double screenWidth, int index) => 
  Container(
    // width: 200,
    width: screenWidth < 600 ? screenWidth.toInt() * 0.457 : 200,
    padding: const EdgeInsets.symmetric(horizontal: 0),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.blueAccent.shade200, Colors.lightBlue.shade300], // Add more colors if needed
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(50),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white, // Change the circle color as needed
          ),
          child: Center(
            child: Text(
              initial,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.blue, // Change the text color as needed
                fontWeight: FontWeight.w500
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 3),
              width: screenWidth < 600 ? screenWidth.toInt() * 0.304 : 120,
              child: Text(
                judul,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white, // Change the text color as needed
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );

  // ===============================================================UNTUK BANNER SLIDER
  final carouselBanner = [
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
  ];

  Stack _CarouselBanner(double screenWidth) {
    return Stack(
      children: [
        CarouselSlider.builder( 
          itemCount: carouselBanner.length, 
          itemBuilder: (context, index, realindex){
            final urlimage = carouselBanner[index];
            return bannerImageSlider(urlimage, index);
          }, 
          options: CarouselOptions(
            height: screenWidth < 600 ? 300:400,
            autoPlay: true,  // Set this to true for automatic sliding
            autoPlayInterval: const Duration(seconds: 5),  // Set the duration between slides
            autoPlayAnimationDuration: const Duration(milliseconds: 900),  // Set the animation duration
            autoPlayCurve: Curves.fastOutSlowIn, 
            viewportFraction: 1.0,
            // aspectRatio: 16/9,
            disableCenter: true,
            onPageChanged: (index, reason) => setState(() => bannerSlideIndicator = index),
          ), 
          
        ),
        Center(
          child: Container(
            width: screenWidth,
            height: screenWidth < 600 ? 320:400,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.lightBlueAccent.shade200.withOpacity(0.8),
                  Colors.blueAccent.shade700.withOpacity(0.8),
                ],
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: screenWidth < 600 ? 235 : 290),
            child: buildBannerPageIndicator()
          )
        ),
      ],
    );
  }

  Widget buildBannerPageIndicator() => AnimatedSmoothIndicator(
    effect: ExpandingDotsEffect(
      dotWidth: 14, 
      dotHeight: 4,
      dotColor: Colors.black45.withOpacity(0.4),
      activeDotColor: Colors.white.withOpacity(0.9), 
    ), 
    activeIndex: bannerSlideIndicator,
    count: carouselBanner.length,
  );

  Widget bannerImageSlider(String urlimage, int index) => SizedBox(
    // margin: EdgeInsets.symmetric(horizontal: 5),
    width: double.infinity,
    child: Image.asset(
      urlimage, 
      fit: BoxFit.cover,
      alignment: Alignment.topCenter,
    ),
  );

  AppBar _appBar() {
    return AppBar(
      title: Container(
        margin: const EdgeInsets.only(top: 3),
        child: Image.asset(
          'assets/img/BSWblack.png',
          width: 120,
        )
      ),
      iconTheme: const IconThemeData(color: Color.fromARGB(255, 53, 129, 192)),
      elevation: 10.0,
      backgroundColor: Colors.white,
    );
  }
}