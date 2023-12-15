import 'package:flutter/material.dart';
import 'package:bswmobile/utils/NavDraw.dart' as NavDraw;

class cekPermohonan extends StatelessWidget {
  const cekPermohonan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: NavDraw.NavigationDrawer(),
    );
  }
}