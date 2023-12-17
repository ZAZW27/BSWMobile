// ignore_for_file: library_prefixes, file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:bswmobile/utils/NavDraw.dart' as NavDraw;
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CekPermohonan extends StatefulWidget {
  const CekPermohonan({super.key});

  @override
  State<CekPermohonan> createState() => _CekPermohonanState();
}

class DataLayanan {
  final String judul;
  final String initial;

  DataLayanan({
    required this.judul, 
    required this.initial,
  });
}

final List<DataLayanan> dataLayananModel = [
  DataLayanan(judul: 'Pelayanan Kependudukan', initial: 'PK'), 
  DataLayanan(judul: 'Izin Kesehatan', initial: 'IP'), 
  DataLayanan(judul: 'Pelayanan Kependudukan', initial: 'PK'), 
  DataLayanan(judul: 'Pelayanan Kependudukan', initial: 'PK'), 
  DataLayanan(judul: 'Pelayanan Kependudukan', initial: 'PK'), 
  DataLayanan(judul: 'Pelayanan Kependudukan', initial: 'PK'), 
];

class _CekPermohonanState extends State<CekPermohonan> {

  
  int bannerSlideIndicator = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      appBar: _appBar(context),
      endDrawer: const NavDraw.NavigationDrawer(),
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
                    child: Container(
                      width: screenWidth,
                      // decoration: BoxDecoration(color: Colors.red.withOpacity(0.3)),
                      child: Center(
                        child: Container(
                          height: 300,
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
                              Text(
                                'Layanan',
                                style: TextStyle(
                                  fontSize: 20, 
                                  fontWeight: FontWeight.w900, 
                                ),
                              ), 
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 12),
                                child: Text(
                                  'Jenis layanan yang dapat anda akses', 
                                  style: TextStyle(
                                    fontSize: 15, 
                                    color: Colors.blue[800]
                                  ),
                                ),
                              ), 
                              Container(
                                // child: CarouselSlider.builder(
                                //   itemCount: itemCount, 
                                //   itemBuilder: itemBuilder, 
                                //   options: CarouselOptions(),
                                // ),
                              )
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

  AppBar _appBar(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          margin: const EdgeInsets.all(10),
          child: SvgPicture.asset('assets/icons/left-arrow.svg', width: 20, color: const Color.fromARGB(255, 75, 75, 75),),
        ),
      ),
      title: const Text('BERITA'),
      backgroundColor: Colors.white,
      centerTitle: true,
    );
  }
}