import 'package:flutter/material.dart';
import 'package:bswmobile/utils/NavDraw.dart' as NavDraw;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: NavDraw.NavigationDrawer(),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Container(
        margin: EdgeInsets.only(top: 3),
        child: Image.asset(
          'assets/img/BSWblack.png',
          width: 120,
        )
      ),
      iconTheme: IconThemeData(color: Color.fromARGB(255, 53, 129, 192)),
      elevation: 0.0,
      backgroundColor: Colors.white,
    );
  }
}

