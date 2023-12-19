
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

class _CekPermohonanState extends State<CekPermohonan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      endDrawer: const NavDraw.NavigationDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Jumbotron(), 
            Transform.translate(
              offset: const Offset(0, -20),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white, 
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20), 
                    topRight: Radius.circular(20), 
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Cek', 
                        style: TextStyle(
                          fontSize: 25, 
                          fontWeight: FontWeight.w700
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Permohonan', // Add text property here
                            style: TextStyle(
                              color: Colors.blue.shade600
                            ),
                          ), 
                        ]
                      )
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Periksa informasi pengajuan', 
                            style: TextStyle(
                              fontSize: 17.3,
                              fontWeight: FontWeight.w600
                            ),
                          ), 
                          Text(
                            'Masukkan nomor dan PIN pengajuan tanpa tanda', 
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.orange.shade800
                            ),
                          ), 
                        ],
                      ),
                    )
                  ],
                ),
              ),

            )
          ],
        ),
      ),
    );
  }
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
      title: const Text(
        'Buat Permohonan', 
        style: TextStyle(
          color: Colors.black, 
          fontWeight: FontWeight.w700
        ),
      ),
      iconTheme: const IconThemeData(color: Color.fromARGB(255, 53, 129, 192)),
      backgroundColor: Colors.white,
      centerTitle: true,
    );
  }
}

class Jumbotron extends StatelessWidget {
  const Jumbotron({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Image.asset(
          'assets/img/bg-blue-wave.png',
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),

        // Centered Text
        const Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Berita Terbaru',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
