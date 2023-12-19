import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white, 
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2), // Shadow color with opacity
                spreadRadius: 0, // Spread radius
                blurRadius: 10, // Blur radius
                offset: Offset(0, 3), // Offset in x and y coordinates
              ),
            ],
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.lightBlue.shade400, Colors.blueAccent.shade400], // Gradient colors
                  ),
                ),
                child: Transform.scale(
                  scale: 2, // Adjust the scale factor as needed
                  child: Transform.translate(
                    offset: Offset(0, -27),
                    child: Image.asset(
                      'assets/img/BSW2.png',
                    ),
                  ),
                ),
              ), 
              Container(
                color: Colors.grey,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 3),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    'Nama',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                TextField(
                                  style: TextStyle(fontSize: 14),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.transparent,
                                    // contentPadding: EdgeInsets.only(left: 12),
                                    contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 12), // Adjust vertical padding
                                    isDense: true, // Reduces overall height
                                    border: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.blueAccent,
                                        width: 2
                                      ),
                                    ),
                                    hintText: 'Masukkan nama anda',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 3),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    'Password',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                TextField(
                                  style: TextStyle(fontSize: 14),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.transparent,
                                    // contentPadding: EdgeInsets.only(left: 12),
                                    contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 12), // Adjust vertical padding
                                    isDense: true, // Reduces overall height
                                    border: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.blueAccent,
                                        width: 2
                                      ),
                                    ),
                                    hintText: 'Masukkan kata sandi anda',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: EdgeInsets.only(top: 24),
                        width: double.infinity,
                        height: 30,
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
                              'LOGIN!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
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
      ),
    );
  }
}