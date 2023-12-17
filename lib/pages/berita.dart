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
    );
  }
}