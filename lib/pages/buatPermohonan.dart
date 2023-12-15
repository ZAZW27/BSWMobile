import 'package:flutter/material.dart';
import 'package:bswmobile/utils/NavDraw.dart' as NavDraw;

class buatPermohonan extends StatelessWidget {
  const buatPermohonan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: NavDraw.NavigationDrawer(),
    );
  }
}