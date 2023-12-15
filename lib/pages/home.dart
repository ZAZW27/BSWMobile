import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:bswmobile/utils/NavDraw.dart' as NavDraw;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bannerSlideIndicator = 0;

  final carouselBanner = [
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
    'assets/img/mainBackGround.png',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appBar(),
      endDrawer: NavDraw.NavigationDrawer(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 800),
          child: Column(
            children: [
              Stack(
                children: [
                  CarouselSlider.builder( 
                    itemCount: carouselBanner.length, 
                    itemBuilder: (context, index, realindex){
                      final urlimage = carouselBanner[index];
                      return buildImage(urlimage, index);
                    }, 
                    options: CarouselOptions(
                      height: 250,
                      autoPlay: true,  // Set this to true for automatic sliding
                      autoPlayInterval: Duration(seconds: 5),  // Set the duration between slides
                      autoPlayAnimationDuration: Duration(milliseconds: 900),  // Set the animation duration
                      autoPlayCurve: Curves.fastOutSlowIn, 
                      viewportFraction: 1.0,
                      aspectRatio: 16/9,

                      onPageChanged: (index, reason) => setState(() => bannerSlideIndicator = index),
                    ), 
                    
                  ),
                  Center(
                    child: Container(
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
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 230),
                      child: buildBannerPageIndicator()
                    )
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

  Widget buildBannerPageIndicator() => AnimatedSmoothIndicator(
    effect: ExpandingDotsEffect(
      dotWidth: 14, 
      dotHeight: 4,
      dotColor: Colors.black45.withOpacity(0.4),
      activeDotColor: Colors.white.withOpacity(0.9), 
    ), 
    activeIndex: bannerSlideIndicator,
    count: carouselBanner.length,
  );

  Widget buildImage(String urlimage, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    width: double.infinity,
    child: Image.asset(
      urlimage, 
      fit: BoxFit.cover,
      alignment: Alignment.topCenter,
    ),
  );

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


