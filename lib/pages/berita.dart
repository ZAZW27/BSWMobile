// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import 'package:bswmobile/utils/NavDraw.dart' as NavDraw;

class Berita extends StatelessWidget {
  const Berita({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            child: const Icon(Icons.arrow_back),
          ),
        ),
        title: const Text('BERITA'),
        backgroundColor: Colors.red[100],
        centerTitle: true,
      ),
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

class CustomSection extends StatefulWidget {
  const CustomSection({super.key});

  @override
  State<CustomSection> createState() => _CustomSectionState();
}

class _CustomSectionState extends State<CustomSection> {
  final List<Map<String, dynamic>> newsData = [
    {
      'imageURL':
          'assets/img/bg-blue-wave.png',
      'date': '12/12/2023',
      'time': '09:30 WITA',
      'visibility': '10x',
      'title':
          'Puncak HUT ke-24 DWP, Sekda Tekankan Peran Perempuan dalam Pembangunan Kota Balikpapan',
      'subtitle':
          'BALIKPAPAN - Acara puncak HUT Ke-24 Dharma Wanita Persatuan (DWP) digelar Jumat (15/12/2023) di Aula Balaikota Balikpapan. HUT DWP tahun 2023 ini mengangkat tema peran strategis perempuan dalam pembangunan.',
    },
    {
      'imageURL':
          'assets/img/bg-blue-wave.png',
      'date': '12/12/2023',
      'time': '09:30 WITA',
      'visibility': '10x',
      'title':
          'Puncak HUT ke-24 DWP, Sekda Tekankan Peran Perempuan dalam Pembangunan Kota Balikpapan',
      'subtitle':
          'BALIKPAPAN - Acara puncak HUT Ke-24 Dharma Wanita Persatuan (DWP) digelar Jumat (15/12/2023) di Aula Balaikota Balikpapan. HUT DWP tahun 2023 ini mengangkat tema peran strategis perempuan dalam pembangunan.',
    },
    // Add more data as needed
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
            TextField(
              decoration: InputDecoration(
                  labelText: 'Cari Berita',
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  suffixIcon: const Icon(Icons.search),
                  isDense: true),
            ),
            const SizedBox(height: 20.0),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: newsData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: MyCard(data: newsData[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Map<String, dynamic> data;

  const MyCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            data['imageURL'],
            width: double.infinity,
            height: 150.0,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.calendar_today,
                      size: 12,
                      color: Colors.orange,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      data['date'],
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.orange,
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Icon(
                      Icons.schedule,
                      size: 12,
                      color: Colors.orange,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      data['time'],
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.orange,
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Icon(
                      Icons.visibility,
                      size: 12,
                      color: Colors.orange,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      data['visibility'],
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Text(
                  data['title'],
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  data['subtitle'],
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}