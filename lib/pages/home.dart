import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:bswmobile/utils/NavDraw.dart' as NavDraw;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class DataLayanan {
  final String title;
  final String image;

  DataLayanan({
    required this.title,
    required this.image,
  });

}

final List<DataLayanan> DataLayananList = [
  DataLayanan(
    title: 'Pelayanan Kependudukan', 
    image: 'pelayanan_kependudukan.svg'
  ),
  DataLayanan(
    title: 'Izin Kesehatan', 
    image: 'izin_kesehatan.svg'
  ),
  DataLayanan(
    title: 'Pelayanan Kelurahan', 
    image: 'pelayanan_kelurahan.svg'
  ),
  DataLayanan(
    title: 'Lainnya', 
    image: 'lainnya.svg'
  ),
];



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
      body: SingleChildScrollView(
        child: Center(
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
                        return bannerImageSlider(urlimage, index);
                      }, 
                      options: CarouselOptions(
                        height: 250,
                        autoPlay: true,  // Set this to true for automatic sliding
                        autoPlayInterval: Duration(seconds: 5),  // Set the duration between slides
                        autoPlayAnimationDuration: Duration(milliseconds: 900),  // Set the animation duration
                        autoPlayCurve: Curves.fastOutSlowIn, 
                        viewportFraction: 1.0,
                        // aspectRatio: 16/9,
                        disableCenter: true,
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
                ), 
                CarouselSlider.builder(
                  itemCount: DataLayananList.length,
                  itemBuilder: (context, index, realindex) {
                    final layananModel = DataLayananList[index];
                    return buildLayananModel(layananModel.title, layananModel.image, index, screenWidth);
                  },
                  options: CarouselOptions(
                    height: 150,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    viewportFraction: screenWidth < 400 ? 0.78 : 0.38, 
                    // initialPage: 1, 
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

// ====================UNTUK CAROUSEL LAYANAN
// ====================UNTUK CAROUSEL LAYANAN
// ====================UNTUK CAROUSEL LAYANAN
  Widget buildLayananModel(String title, String image, int index, double screenWidth) => 
  Container(
    width: screenWidth < 400 ? screenWidth * 0.78 : 300,
    constraints: BoxConstraints(maxWidth: 700),
    decoration: BoxDecoration(color: Colors.blue.withOpacity(0.2)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/icons/' + image, // Replace 'your_icon.svg' with your actual SVG file path
        ),
        // Container(
        //   width: 20, // Adjust the size of the outer circle as needed
        //   height: 20, // Adjust the size of the outer circle as needed
        //   decoration: BoxDecoration(
        //     shape: BoxShape.circle,
        //     color: Colors.blue, // Color of the outer circle
        //   ),
        // ),
        SizedBox(height: 8,),
        Text(
          title,
          
        ),
      ],
    ),
  );


// =====================UNTUK BANNER SLIDER
// =====================UNTUK BANNER SLIDER
// =====================UNTUK BANNER SLIDER
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

  Widget bannerImageSlider(String urlimage, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    width: double.infinity,
    child: Image.asset(
      urlimage, 
      fit: BoxFit.cover,
      alignment: Alignment.topCenter,
    ),
  );


// ===================UNTUK APPBAR
// ===================UNTUK APPBAR
// ===================UNTUK APPBAR
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


