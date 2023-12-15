import 'package:flutter/material.dart';
import 'package:bswmobile/utils/NavDraw.dart' as NavDraw;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appBar(),
      endDrawer: NavDraw.NavigationDrawer(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 920),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: screenWidth ,
                    height: 250,
                    decoration: BoxDecoration(
                      image:  DecorationImage(
                        image: AssetImage('assets/img/mainBackGround.png'), 
                        fit: BoxFit.cover, 
                        alignment: Alignment.topCenter
                      ), 
                    ),
                  ),
                  Container(
                    width: screenWidth,
                    height: 250,
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
                ],
              ),
              Container(
                width: screenWidth * 0.9,
                margin: EdgeInsets.only(top: 24),
                child:Text.rich(
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
              )
            ],
          ),
        ),
      ),
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

