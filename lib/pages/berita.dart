import 'package:flutter/material.dart';
import 'package:bswmobile/utils/NavDraw.dart' as NavDraw;

class berita extends StatelessWidget {
  const berita({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: EdgeInsets.all(10),
            child: Icon(Icons.arrow_back),
          ),
        ),
        title: Text('BERITA'),
        backgroundColor: Colors.red[100],
        centerTitle: true,
      ),
      endDrawer: NavDraw.NavigationDrawer(),
    );
  }
}