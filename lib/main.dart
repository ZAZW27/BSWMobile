// import 'package:bswmobile/pages/home.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:bswmobile/utils/splash_screen.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(fontFamily: 'Poppins'),
      home: SplashScreen(),
    );
  }
}
