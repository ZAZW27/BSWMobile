// ignore_for_file: library_prefixes, non_constant_identifier_names, prefer_interpolation_to_compose_strings, deprecated_member_use

import 'package:bswmobile/pages/berita.dart';
import 'package:bswmobile/pages/buatPermohonan.dart';
import 'package:bswmobile/pages/cekPermohonan.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:bswmobile/utils/NavDraw.dart' as NavDraw;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// Model datas START

  // ===================================================== Layanan =====================================
  class SubDataLayanan {
    final String judul;
    final String image;

    SubDataLayanan({
      required this.judul, 
      required this.image, 
    });
  }

  final List<SubDataLayanan> SubdataLayananModel = [
    SubDataLayanan(judul: 'Akta kematian', image: 'akta-kematian.png'), 
    SubDataLayanan(judul: 'Akta perkawinan', image: 'akta-perkawinan.png'), 
    SubDataLayanan(judul: 'Akta perceraian', image: 'akta-perceraian.png'), 
    SubDataLayanan(judul: 'Perubahan biodata', image: 'biodata.png'), 
    SubDataLayanan(judul: 'Pindah luar daerah', image: 'pindah.png'), 
    SubDataLayanan(judul: 'Perubahan alamat', image: 'perubahan-alamat.png'), 
    SubDataLayanan(judul: 'Batal pindah luar daerah', image: 'pindah.png'), 
    SubDataLayanan(judul: 'Penduduk pendatang luar daerah', image: 'pendatang.png'), 
    SubDataLayanan(judul: 'Numpang kartu keluarga', image: 'pinjamkk.png'), 
    SubDataLayanan(judul: 'Lainnya', image: 'dot.png'), //dots
  ];




  // ===================================================== Ajuan permohonan =====================================
  class AjukanPermohonan {
    final String title;
    final String subtitle;

    AjukanPermohonan({
      required this.title, 
      required this.subtitle, 
    });
  }

  final List<AjukanPermohonan> ajukanPermohonanData = [

    AjukanPermohonan(
      title: 'Bank Data Persyaratanan Untuk Setiap Pengguna', 
      subtitle: 'Manajemen penyimpanan data syarat permohonan, sehingga anda Tidak Perlu menggunakan ulang pada syarat yang sama untuk perizinan lainnya... '
    ), 
    AjukanPermohonan(
      title: 'Bank Data Persyaratanan Untuk Setiap Pengguna', 
      subtitle: 'Manajemen penyimpanan data syarat permohonan, sehingga anda Tidak Perlu menggunakan ulang pada syarat yang sama untuk perizinan lainnya... '
    ), 
    AjukanPermohonan(
      title: 'Bank Data Persyaratanan Untuk Setiap Pengguna', 
      subtitle: 'Manajemen penyimpanan data syarat permohonan, sehingga anda Tidak Perlu menggunakan ulang pada syarat yang sama untuk perizinan lainnya... '
    ), 
  ];

  // ===================================================== DATA LAYANAN=====================================
  class DataLayanan {
    final String title;
    final String image;

    DataLayanan({
      required this.title,
      required this.image,
    });

  }

  final List<DataLayanan> dataLayananList = [
    DataLayanan(title: 'Pelayanan Kependudukan' , image: 'pelayanan_kependudukan.svg'),
    DataLayanan(title: 'Izin Kesehatan'         , image: 'izin_kesehatan.svg'),
    DataLayanan(title: 'Pelayanan Kelurahan'    , image: 'pelayanan_kelurahan.svg'),
    DataLayanan(title: 'Lainnya'                , image: 'lainnya.svg'),
  ];

  // ===================================================== DATA BERITA =====================================

  class DataBerita {
    final String gambar;
    final String judul;
    final String isi;
    final String tanggal;
    final String bulan;
    final String tahun;

    DataBerita({
      required this.gambar, 
      required this.judul, 
      required this.isi, 
      required this.tanggal, 
      required this.bulan, 
      required this.tahun, 
    });
  }

  final List<DataBerita> dataBeritaList = [
    DataBerita(
      gambar: 'berita.png', 
      judul: 'Audiensi dengan wali kota pertamina keluarkan kebijakan SPBU khusu roda empat dan roda dua', 
      isi: 'Balikpapan - Pemerintah kota balikpapan bersama pertamina patra niaga menyampaikan rilis kepada awak medai yang akan mengeluarkan kebijakan baru khusus bagi kendaraan beroda empat dan dua tentang SPBU ', 
      tanggal: '28', bulan: 'November', tahun: '2023'
    ),
    DataBerita(
      gambar: 'berita.png', 
      judul: 'Audiensi dengan wali kota pertamina keluarkan kebijakan SPBU khusu roda empat dan roda dua', 
      isi: 'Balikpapan - Pemerintah kota balikpapan bersama pertamina patra niaga menyampaikan rilis kepada awak medai yang akan mengeluarkan kebijakan baru khusus bagi kendaraan beroda empat dan dua tentang SPBU ', 
      tanggal: '28', bulan: 'November', tahun: '2023'
    ),
    DataBerita(
      gambar: 'berita.png', 
      judul: 'Audiensi dengan wali kota pertamina keluarkan kebijakan SPBU khusu roda empat dan roda dua', 
      isi: 'Balikpapan - Pemerintah kota balikpapan bersama pertamina patra niaga menyampaikan rilis kepada awak medai yang akan mengeluarkan kebijakan baru khusus bagi kendaraan beroda empat dan dua tentang SPBU ', 
      tanggal: '28', bulan: 'November', tahun: '2023'
    ),
    DataBerita(
      gambar: 'berita.png', 
      judul: 'Audiensi dengan wali kota pertamina keluarkan kebijakan SPBU khusu roda empat dan roda dua', 
      isi: 'Balikpapan - Pemerintah kota balikpapan bersama pertamina patra niaga menyampaikan rilis kepada awak medai yang akan mengeluarkan kebijakan baru khusus bagi kendaraan beroda empat dan dua tentang SPBU ', 
      tanggal: '28', bulan: 'November', tahun: '2023'
    ),
    DataBerita(
      gambar: 'berita.png', 
      judul: 'Audiensi dengan wali kota pertamina keluarkan kebijakan SPBU khusu roda empat dan roda dua', 
      isi: 'Balikpapan - Pemerintah kota balikpapan bersama pertamina patra niaga menyampaikan rilis kepada awak medai yang akan mengeluarkan kebijakan baru khusus bagi kendaraan beroda empat dan dua tentang SPBU ', 
      tanggal: '28', bulan: 'November', tahun: '2023'
    ),
    DataBerita(
      gambar: 'berita.png', 
      judul: 'Audiensi dengan wali kota pertamina keluarkan kebijakan SPBU khusu roda empat dan roda dua', 
      isi: 'Balikpapan - Pemerintah kota balikpapan bersama pertamina patra niaga menyampaikan rilis kepada awak medai yang akan mengeluarkan kebijakan baru khusus bagi kendaraan beroda empat dan dua tentang SPBU ', 
      tanggal: '28', bulan: 'November', tahun: '2023'
    ),
    DataBerita(
      gambar: 'berita.png', 
      judul: 'Audiensi dengan wali kota pertamina keluarkan kebijakan SPBU khusu roda empat dan roda dua', 
      isi: 'Balikpapan - Pemerintah kota balikpapan bersama pertamina patra niaga menyampaikan rilis kepada awak medai yang akan mengeluarkan kebijakan baru khusus bagi kendaraan beroda empat dan dua tentang SPBU ', 
      tanggal: '28', bulan: 'November', tahun: '2023'
    ),
    DataBerita(
      gambar: 'berita.png', 
      judul: 'Audiensi dengan wali kota pertamina keluarkan kebijakan SPBU khusu roda empat dan roda dua', 
      isi: 'Balikpapan - Pemerintah kota balikpapan bersama pertamina patra niaga menyampaikan rilis kepada awak medai yang akan mengeluarkan kebijakan baru khusus bagi kendaraan beroda empat dan dua tentang SPBU ', 
      tanggal: '28', bulan: 'November', tahun: '2023'
    ),
  ];

// Model datas END

class _HomePageState extends State<HomePage> {
  int bannerSlideIndicator = 0;


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final dividerCol = Colors.blueGrey.shade300;
    return Scaffold(
      appBar: appBar(),
      // endDrawer: const NavDraw.NavigationDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF3F4F6)
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 18),
              // constraints: BoxConstraints(maxWidth: 1000),
              child: Column(
                children: [
                  _CarouselBanner(screenWidth),
                  Container(
                    margin: const EdgeInsets.only(bottom: 18),
                    constraints: const BoxConstraints(maxWidth: 1000),
                    child: Column(
                      children: [
                        Container(
                          width: screenWidth * 0.9,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          margin: const EdgeInsets.only(top: 24, bottom: 8),
                          child:const Text.rich(
                            TextSpan(
                              text: 'Layanan yang bisa kamu akses di ',
                              style: TextStyle(
                                color: Colors.black, 
                                fontWeight: FontWeight.w600
                              ), // Color for the first part of the text
                              children: [
                                TextSpan(
                                  text: 'Balikpapan Single Window',
                                  style: TextStyle(
                                    color: Colors.blue, 
                                    fontWeight: FontWeight.w600
                                  ), // Color for the specified substring
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center, // Center the text
                          ),
                        ), 
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          margin: const EdgeInsets.only(bottom: 12, top: 4, left: 12, right: 12),
                          decoration: BoxDecoration(
                            color: Colors.white, 
                            borderRadius: BorderRadius.circular(15), 
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: const Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Wrap(
                            // runSpacing: 8,
                            children: [
                              ListTile(
                                leading: SvgPicture.asset('assets/icons/buat-permohonan.svg', width: 20, color: const Color.fromARGB(255, 75, 75, 75),),
                                // leading: Icon(Icons.home_outlined),
                                title: const Text('Buat Permohonan'),
                                onTap: () {
                                // Navigator.pop(context);

                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BuatPermohonan()));
                              },
                              ),
                              Container(margin: const EdgeInsets.symmetric(horizontal: 18), child: Divider(color: dividerCol,)),
                              ListTile(
                                leading: SvgPicture.asset('assets/icons/cek-permohonan.svg', width: 20, color: const Color.fromARGB(255, 75, 75, 75),),
                                // leading: Icon(Icons.home_outlined),
                                title: const Text('Cek Permohonan'),
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CekPermohonan()));
                                },
                              ),
                              Container(margin: const EdgeInsets.symmetric(horizontal: 18), child: Divider(color: dividerCol,)),
                              ListTile(
                                leading: SvgPicture.asset('assets/icons/berita.svg', width: 20, color: const Color.fromARGB(255, 75, 75, 75),),
                                // leading: Icon(Icons.home_outlined),
                                title: const Text('Berita'),
                                onTap: () {
                                  // Navigator.pop(context);
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Berita()));
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            // color: Colors.blue
                          ),
                          child: const Text(
                            'Pelayanan', 
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        _CarouselLayanan(screenWidth),
                        Container(
                          width: double.infinity , // Set your desired width for the container
                          margin: const EdgeInsets.only(left: 12, right: 12, top: 24),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 252, 255, 255),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(90, 50, 45, 93), // Change the shadow color as needed
                                offset: Offset(0.0, 0.0),
                                blurRadius: 10.0, // Adjust the blur radius to control the intensity of the shadow
                                spreadRadius: -2.0, // Negative spread radius for inner shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20)
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
                                      'Layanan Umum',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                ),
                              ), 
                              Center(
                                child: Wrap(
                                  spacing: 18.0, // Horizontal space between children
                                  // runSpacing: 12.0, // Vertical space between lines of children
                                  children: SubdataLayananModel.map((layanan) {
                                    return _layananVariant(layanan);
                                  }).toList(),
                                ),
                              ),
                            ],
                          )
                        ),
                        // Container(
                        //   margin: const EdgeInsets.symmetric(vertical: 12),
                        //   width: double.infinity,
                        //   // decoration: BoxDecoration(color: Colors.amber),
                        //   child: Wrap(
                        //     children: [
                        //       Container(
                        //         padding: EdgeInsets.only(left: screenWidth < 600 ? 6 : 4, right: screenWidth < 600 ? 6 : 4, top: 24),
                                
                        //         child: Column(
                        //           children: [
                        //             Align(
                        //               alignment: Alignment.centerLeft, // Align child to the left
                        //               child: Text(
                        //                 "Ajukan permohonan izin melalui BSW", 
                        //                 style: TextStyle(
                        //                   fontSize: screenWidth < 600 ? 15.0 : 20,
                        //                   fontWeight: FontWeight.w700,
                        //                 ),
                        //               ),
                        //             ),
                        //             Align(
                        //               alignment: Alignment.centerLeft, // Align child to the left
                        //               child: Text(
                        //                 'Melalui Balikpapan Single Window (BSW). Anda dapat mengajukan permohonan izin secara mandiri dengan sistem daring (online). Keunggulan dari Balikpapan Single Window diantaranya;', 
                        //                 style: TextStyle(
                        //                   fontSize: screenWidth < 600 ? 9:11, 
                        //                   color: Colors.blue[800],
                        //                 ),
                        //               ),
                        //             )
                        //           ],
                        //         ),
                        //       )
                        //     ],
                        //   ),
                        // ), 
                        // Container(
                        //   margin: EdgeInsets.symmetric(horizontal: screenWidth < 600 ? 4 : 42),
                        //   child: _CarouselAjuanPermohonan(screenWidth)
                        // ), 
                        Container(
                          padding: EdgeInsets.only(left: screenWidth < 600 ? 6 : 4, right: screenWidth < 600 ? 6 : 4, top: 28),
                          child: Column(
                            children: [
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Berita Terbaru', 
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold, 
                                    fontSize: 20,
                                  ),
                                ),
                              ), 
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Melalui Balikpapan Single Window (BSW), update berita terbaru seputar kota Balikpapan', 
                                  style: TextStyle(
                                    color: Colors.blue[800],
                                    fontSize: screenWidth < 600 ? 9:11, 
                                  ),
                                ),
                              ), 
                            ],
                          )
                        ), 
                        _CarouselBerita(screenWidth), 
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 12),
                            width: 120,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Berita()));
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent, // Set primary color to transparent
                                  padding: const EdgeInsets.all(0), // Remove default padding
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      bottomRight: Radius.circular(30),
                                      topLeft: Radius.circular(7),
                                      bottomLeft: Radius.circular(7),
                                    ),
                                  ),
                                  elevation: 0,
                                ),
                                child: Ink(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Colors.blueAccent.shade400, Colors.lightBlue.shade500],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      bottomRight: Radius.circular(30),
                                      topLeft: Radius.circular(7),
                                      bottomLeft: Radius.circular(7),
                                    ),
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Berita lainnya',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SvgPicture.asset(
                                          'assets/icons/right-arrow.svg',
                                          width: 20,
                                          height: 20,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )

                      ],
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
  // ============================================================UNTUK SUBLAYANAN
  // ========================================UNTUK SUBLAYANAN
  // ====================UNTUK SUBLAYANAN
  Flexible _layananVariant(SubDataLayanan layanan) {
    return Flexible(
      child: GestureDetector(
        onTap: (){
          layanan.judul == 'Lainnya' ? Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BuatPermohonan())) : null;
        },
        child: Container(
          decoration: const BoxDecoration(
            // color: Colors.red.withOpacity(0.6)
          ),
          height: 100,
          width: 50,
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/icons/${layanan.image}',
                  width: 40,
                ),
                const SizedBox(height: 4,),
                Text(
                  layanan.judul.length > 10 ? layanan.judul.substring(0, 10) + '...' : layanan.judul, 
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ============================================================UNTUK CAROUSEL BERITA
  // ========================================UNTUK CAROUSEL BERITA
  // ====================UNTUK CAROUSEL BERITA
  SizedBox _CarouselBerita(double screenWidth) {
    return SizedBox(
      width: screenWidth,
      child: CarouselSlider.builder(
        itemCount: 4,
        itemBuilder: (context, index, realindex) {
          return buildBeritaPair(index, screenWidth, dataBeritaList);
        },
        options: CarouselOptions(
          height: screenWidth < 600 ? 350 : 230,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 5),
          autoPlayAnimationDuration: const Duration(milliseconds: 1500),
          autoPlayCurve: Curves.fastOutSlowIn,
          viewportFraction: 1.0, 
        ),
      )
    );
  }

  Widget buildBerita(index, screenWidth, gambar, judul, isi, tanggal, bulan, tahun)=>
  Container(
    margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
    height: null,
    width: screenWidth < 600 ? screenWidth : screenWidth > 1100 ? 1000 / 2 - 10 :screenWidth / 2 - 80,

    decoration: const BoxDecoration(
      // color: Colors.blue, 
      // borderRadius: BorderRadius.circular(10)
    ),
    child: Column(
      children: [
        Container(
          constraints: BoxConstraints(maxHeight: screenWidth < 600 ? 150 : 200),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.5),
                  // borderRadius: const BorderRadius.only(
                  //   topLeft: Radius.circular(15),
                  //   topRight: Radius.circular(15),
                  // ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  // borderRadius: const BorderRadius.only(
                  //   topLeft: Radius.circular(15),
                  //   topRight: Radius.circular(15),
                  // ),
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/img/berita/' + gambar, 
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: screenWidth,
                  height: screenWidth < 600 ? 250:400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.85),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 55,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.amber.shade800.withOpacity(0.7), 
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15), 
                    bottomRight: Radius.circular(25)
                  ), 
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      tanggal,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold, 
                        color: Colors.white
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      height: 1,  // Adjust the height of the white line
                      color: Colors.white,
                    ),
                    Text.rich(
                      TextSpan(
                        text: bulan.substring(0, 3) + " ",
                        style: const TextStyle(
                          color: Colors.white, 
                          fontSize: 10
                        ), 
                        children: [ 
                          TextSpan(
                            text:  "'" + tahun.substring(tahun.length - 2),
                            style: const TextStyle(
                              color: Colors.white, 
                              fontSize: 10
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center, // Center the text
                    ),
                  ],
                ),
              ), 
              Container(
                // decoration: BoxDecoration(color: Colors.amber),
                padding: EdgeInsets.symmetric(horizontal: screenWidth < 600 ? 4 : 10, vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      judul, 
                      style: TextStyle(
                        fontSize: screenWidth < 600 ? 14:14,
                        fontWeight: screenWidth < 600 ? FontWeight.w600 : FontWeight.w700, 
                        color: Colors.white, 
                      ),
                    ), 
                    Text(
                      truncateText(isi, 15),
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: screenWidth < 600 ? 10:12
                      ),
                    ), 
                  ],
                ),
              ),
            ],
          ),
        ), 
      ],
    ),
  );

 Widget buildBeritaPair(int index, double screenWidth, List<DataBerita> beritaList) {
  // Ensure that the indices are valid
  if (index * 2 + 1 < beritaList.length) {
    DataBerita currentBerita = beritaList[index * 2];
    DataBerita nextBerita = beritaList[index * 2 + 1];

    // Define your common set of widgets
    final commonChildWidgets = [
      buildBerita(
        index * 2,
        screenWidth,
        currentBerita.gambar,
        currentBerita.judul,
        currentBerita.isi,
        currentBerita.tanggal,
        currentBerita.bulan,
        currentBerita.tahun,
      ),
      buildBerita(
        index * 2 + 1,
        screenWidth,
        nextBerita.gambar,
        nextBerita.judul,
        nextBerita.isi,
        nextBerita.tanggal,
        nextBerita.bulan,
        nextBerita.tahun,
      ),
    ];

    // Use the common widgets in your UI based on screenWidth
    return screenWidth < 600
        ? Column(
            children: commonChildWidgets,
          )
        : Wrap(
            children: commonChildWidgets,
          );
  }

  // Return an empty SizedBox if indices are not valid
  return const SizedBox.shrink();
}


  // ============================================================UNTUK CAROUSEL Ajuan Permohonan
  // ========================================UNTUK CAROUSEL Ajuan Permohonan
  // ====================UNTUK CAROUSEL Ajuan Permohonan
  // CarouselSlider _CarouselAjuanPermohonan(double screenWidth) {
  //   return CarouselSlider.builder(
  //     itemCount: ajukanPermohonanData.length, 
  //     itemBuilder: (context, index, realindex){
  //       final permohonan = ajukanPermohonanData[index];
  //       return buildAjuanPermohonan(permohonan.title, permohonan.subtitle, index, screenWidth );
  //     }, 
  //     options: CarouselOptions(
  //       height: 140, 
  //       viewportFraction: 1.0,
  //       autoPlay: true, 
  //       autoPlayInterval: const Duration(milliseconds: 5600), 
  //       autoPlayAnimationDuration: const Duration(milliseconds: 1200), 
  //     ),
  //   );
  // }

  // Widget buildAjuanPermohonan(String title, String subtitle, int index, double screenWidth) =>
  // Container(
  //   decoration: BoxDecoration(color: Colors.lightGreen[50]),
  //   margin: const EdgeInsets.symmetric(horizontal: 5),
  //   width: screenWidth ,
  //   child: Center(
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Text(
  //           title, 
  //           style: TextStyle(
  //             fontWeight: FontWeight.bold, 
  //             color: Colors.lightGreen[600]
  //           ),
  //           textAlign: TextAlign.center,
  //         ), 
  //         const SizedBox(height: 12,), 
  //         Text(
  //           subtitle, 
  //           textAlign: TextAlign.center, 
  //           style: TextStyle(
  //             fontSize: screenWidth < 600 ? 10:13
  //           ),
  //         ),
        
  //       ],
  //     ),
  //   ),
  // );

  // ============================================================UNTUK CAROUSEL LAYANAN
  // ========================================UNTUK CAROUSEL LAYANAN
  // ====================UNTUK CAROUSEL LAYANAN

  Container _CarouselLayanan(double screenWidth) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: CarouselSlider.builder(
        itemCount: dataLayananList.length,
        itemBuilder: (context, index, realindex) {
          final layananModel = dataLayananList[index];
          return buildLayananModel(layananModel.title, layananModel.image, index, screenWidth);
        },
        options: CarouselOptions(
          height: 150,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          viewportFraction: screenWidth < 600 ? 0.78 : 0.38, 
          initialPage: screenWidth < 600 ? 0 : 1, 
          autoPlay: true, 
          autoPlayInterval: const Duration(seconds: 6),
          autoPlayAnimationDuration: const Duration(milliseconds: 1000), 
        ),
      ),
    );
  }

  Widget buildLayananModel(String title, String image, int index, double screenWidth) => 
  Container(
    width: screenWidth < 400 ? screenWidth * 0.78 : 660,
    // constraints: BoxConstraints(maxWidth: 700),
    decoration: const BoxDecoration(
      color: Colors.white, 
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            
            border: Border.all(
              color: Colors.black, 
              width: 1.5
            )
          ),
          child: Center(
            child: SvgPicture.asset(
              'assets/icons/$image',
            ),
          )
        ),
        const SizedBox(height: 8,),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16, 
            fontWeight: FontWeight.w600
          ),
        ),
      ],
    ),
  );


  // ===============================================================UNTUK BANNER SLIDER
  // ==========================================UNTUK BANNER SLIDER
  // =====================UNTUK BANNER SLIDER

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
            height: screenWidth < 600 ? 250:400,
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
            height: screenWidth < 600 ? 250:400,
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
            margin: EdgeInsets.only(top: screenWidth < 600 ? 230: 380),
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


  // ===================UNTUK APPBAR
  // ===================UNTUK APPBAR
  // ===================UNTUK APPBAR
  AppBar appBar() {
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
  String truncateText(String text, int maxWords) {
    List<String> words = text.split(' ');

    if (words.length > maxWords) {
      return '${words.take(maxWords).join(' ')}...';
    } else {
      return text;
    }
  }
}



