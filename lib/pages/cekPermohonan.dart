
import 'package:bswmobile/pages/berita.dart';
import 'package:bswmobile/pages/buatPermohonan.dart';
import 'package:bswmobile/pages/home.dart';
import 'package:bswmobile/pages/login.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:bswmobile/utils/NavDraw.dart' as NavDraw;
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CekPermohonan extends StatefulWidget {
  const CekPermohonan({super.key});

  @override
  State<CekPermohonan> createState() => _CekPermohonanState();
}

class _CekPermohonanState extends State<CekPermohonan> {

  final List<Widget> screens = [
    HomePage(), 
    Berita(),
    BuatPermohonan(),
    CekPermohonan(),
    Login(),
  ];
  int bottomNavIndicator = 3;

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: _appBar(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavIndicator.clamp(0, 4),
        onTap: (index) {
          setState(() {
            bottomNavIndicator = index;
          });

          // Perform navigation based on the selected index
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => screens[index]),
          );
        },
        selectedItemColor: Colors.blue, // Set the selected item color
        unselectedItemColor: Colors.grey, 
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Berita',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.crisis_alert),
            label: 'Buat permohonan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_alert_rounded),
            label: 'Cek permohonan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Profil',
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFF3F4F6),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Jumbotron(), 
              Transform.translate(
                offset: const Offset(0, -20),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: screenWidth < 600 ? 12:28),
                  width: double.infinity,
                  constraints: BoxConstraints(maxWidth: 900),
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20), 
                      topRight: Radius.circular(20), 
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: 'Cek', 
                          style: TextStyle(
                            fontSize: 25, 
                            fontWeight: FontWeight.w700
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Permohonan', // Add text property here
                              style: TextStyle(
                                color: Colors.blue.shade600
                              ),
                            ), 
                          ]
                        )
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Periksa informasi pengajuan', 
                              style: TextStyle(
                                fontSize: 17.3,
                                fontWeight: FontWeight.w600
                              ),
                            ), 
                            Text(
                              'Masukkan nomor dan PIN pengajuan tanpa tanda', 
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.orange.shade800
                              ),
                            ), 
          
                          ],
                        ),
                      ), 
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // UNUTK NOMOR
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              child: Text.rich(
                                TextSpan(
                                  text: 'Nomor', 
                                  style: TextStyle(
                                    fontSize: 15, 
                                    fontWeight: FontWeight.w500
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' *', // Add text property here
                                      style: TextStyle(
                                        color: Colors.red.shade600
                                      ),
                                    ), 
                                  ]
                                )
                              ),
                            ),
                            SizedBox(height: 8,), 
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'xxx-xxx-xxx', // Shown when the text field is empty
                                contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0), // Adjust padding
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0), // Adjust border radius
                                  borderSide: BorderSide(color: Colors.blue), // Adjust border color
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: Colors.blue, width: 2.0), // Adjust focused border color and width
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                              ),
                              style: TextStyle(color: Colors.black, fontSize: 15.0), // Change the text color and font size
                            ),
                            SizedBox(height: 12,), 
                            // UNUTK PIN
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Text.rich(
                                TextSpan(
                                  text: 'PIN', 
                                  style: TextStyle(
                                    fontSize: 15, 
                                    fontWeight: FontWeight.w500
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' *', // Add text property here
                                      style: TextStyle(
                                        color: Colors.red.shade600
                                      ),
                                    ), 
                                  ]
                                )
                              ),
                            ),
                            SizedBox(height: 8,), 
                            TextField(
                              decoration: InputDecoration(
                                hintText: '####', // Shown when the text field is empty
                                contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0), // Adjust padding
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0), // Adjust border radius
                                  borderSide: BorderSide(color: Colors.blue), // Adjust border color
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: Colors.blue, width: 2.0), // Adjust focused border color and width
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                              ),
                              style: TextStyle(color: Colors.black, fontSize: 15.0), // Change the text color and font size
                            ), 
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              margin: EdgeInsets.only(top: 12, bottom: 10),
                              child: Text.rich(
                                TextSpan(
                                  text: 'Captcha', 
                                  style: TextStyle(
                                    fontSize: 15, 
                                    fontWeight: FontWeight.w500
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' *', // Add text property here
                                      style: TextStyle(
                                        color: Colors.red.shade600
                                      ),
                                    ), 
                                  ]
                                )
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300, 
                                borderRadius: BorderRadius.circular(10), 
                              ),
                              child: Wrap(
                                children: [
                                  Container(
                                    width: 250,
                                    child: Image.asset(
                                      'assets/img/captcha.jpeg'
                                    )
                                  ), 
                                  Container(
                                    width: 40,
                                    height: 40,
                                    margin: EdgeInsets.only(left: 8, top: 16),
                                    padding: EdgeInsets.all(11),
                                    decoration: BoxDecoration(
                                      color: Colors.lightGreen.shade600, 
                                      borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/icons/reset.svg'
                                    ),
                                  )
                                ],
                              ),
                            ), 
                            SizedBox(height: 14,), 
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Ketik huruf captcha di atas untuk validasi',
                                contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                labelStyle: TextStyle(color: Colors.green), // Change the label (hint) color
                              ),
                              style: TextStyle(color: Colors.black, fontSize: 15.0), // Change the text color and font size
                            ), 
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                margin: EdgeInsets.only(top: 24),
                                width: 200,
                                height: 40,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Colors.lightBlue, Colors.blueAccent],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.transparent,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      // borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  onPressed: (){},
                                  child: Center(
                                    child: Text(
                                      'Cek permohonan!',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
          
              )
            ],
          ),
        ),
      ),
    );
  }
  AppBar _appBar() {
    return AppBar(
      title: Container(
        margin: const EdgeInsets.only(top: 3),
        child: Image.asset(
          'assets/img/BSWblack.png',
          width: 120,
        )
      ),
      iconTheme: const IconThemeData(color: Color.fromARGB(255, 53, 129, 192)),
      elevation: 10.0,
      backgroundColor: Colors.white,
    );
  }
}

class Jumbotron extends StatelessWidget {
  const Jumbotron({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Image.asset(
          'assets/img/bg-blue-wave.png',
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),

        // Centered Text
        const Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            // child: Text(
            //   'Cek permohonan anda',
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 24.0,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
          ),
        ),
      ],
    );
  }
}
