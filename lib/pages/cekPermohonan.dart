// ignore_for_file: library_prefixes, file_names

import 'package:flutter/material.dart';
import 'package:bswmobile/utils/NavDraw.dart' as NavDraw;

class CekPermohonan extends StatelessWidget {
  const CekPermohonan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: const NavDraw.NavigationDrawer(),
    );
  }
}