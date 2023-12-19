import 'package:flutter/material.dart';
// ignore: library_prefixes
import 'package:bswmobile/utils/NavDraw.dart' as NavDraw;
import 'package:flutter_svg/svg.dart';

class DetailBerita extends StatelessWidget {
  const DetailBerita({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      endDrawer: const NavDraw.NavigationDrawer(),
      body: const SingleChildScrollView(
          child: Column(
            children: [
              // Your Jumbotron
              Jumbotron(),
              CustomSection(),
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
          // ignore: deprecated_member_use
          child: SvgPicture.asset('assets/icons/left-arrow.svg', width: 20, color: const Color.fromARGB(255, 75, 75, 75),),
        ),
      ),
      title: const Text(
        'Berita', 
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
          'assets/img/berita/berita1.jpg',
          height: 400,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}

class CustomSection extends StatefulWidget {
  const CustomSection({super.key});

  @override
  State<CustomSection> createState() => _CustomSectionState();
}

class _CustomSectionState extends State<CustomSection> {
  final List<String> paragraphs = [
    "BALIKPAPAN - Acara puncak HUT Ke-24 Dharma Wanita Persatuan (DWP) digelar Jumat (15/12/2023) di Aula Balaikota Balikpapan. HUT DWP tahun 2023 ini mengangkat tema peran strategis perempuan dalam pembangunan.",
    "Dalam kesempatan tersebut hadir Sekretaris Daerah Kota Balikpapan, Muhaimin mewakili Wali Kota Balikpapan, Rahmad Mas'ud. Ia menyampaikan selamat kepada DWP Kota Balikpapan. Diharapkan organisasi ini bisa jadi ruang yang aman bagi seluruh anggota untuk saling mendukung satu sama lain. Sehingga potensi kadernya berkembang optimal.",
    "Ia mengatakan, tema HUT DWP kali ini mencerminkan semangat persatuan dan gotong-royong, serta loyalitas pada bangsa dan negara. Tema ini mencerminkan tekad dan komitmen untuk memahami dan memaksimalkan peran perempuan dalam melaksanakan pembangunan berkelanjutan di kota Balikpapan.",

    // Add more paragraphs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -20),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white, // Adjust the background color as needed
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        padding: const EdgeInsets.all(20.0),
        width: double.infinity, // Adjust the padding as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.calendar_today,
                  size: 12,
                  color: Colors.orange,
                ),
                SizedBox(width: 2),
                Text(
                  '12/12/2023',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.orange,
                  ),
                ),
                SizedBox(width: 6),
                Icon(
                  Icons.schedule,
                  size: 12,
                  color: Colors.orange,
                ),
                SizedBox(width: 2),
                Text(
                  '09:30 WITA',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.orange,
                  ),
                ),
                SizedBox(width: 6),
                Icon(
                  Icons.visibility,
                  size: 12,
                  color: Colors.orange,
                ),
                SizedBox(width: 2),
                Text(
                  '10x',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Puncak HUT ke-24 DWP, Sekda Tekankan Peran Perempuan dalam Pembangunan Kota Balikpapan',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: paragraphs.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    paragraphs[index],
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 41, 41, 41),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}