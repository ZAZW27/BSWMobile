import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';



class Emergency extends StatefulWidget {
  const Emergency({super.key});

  @override
  State<Emergency> createState() => _EmergencyState();
}


class _EmergencyState extends State<Emergency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
          padding: const EdgeInsets.only(bottom: 50),
          constraints: const BoxConstraints(maxWidth: 800),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 12),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Currect location:', 
                        style: TextStyle(
                          color: Colors.black, 
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ), 
                    Text(
                      'Jl. Jenderal Sudirman No.1, RT.13, Klandasan Ulu, Kec. Balikpapan Kota, Kota Balikpapan, Kalimantan Timur 76112', 
                      style: TextStyle(
                        color: Colors.grey[600]
                      ),
                    )
                  ],
                ),
              ), 
              Container(
                margin: const EdgeInsets.only(top: 12),
                child: Column(
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Phone number we will contact',
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                            text: ' *',
                            style: TextStyle(
                              color: Colors.red, 
                              fontWeight: FontWeight.w900, 
                              fontSize: 20
                            )
                          )
                        ]
                      ),
                    ),
                    const SizedBox(
                      width: 180,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '+62 000-000-000',
                          suffixIcon: Icon(Icons.phone_in_talk),
                          border: InputBorder.none,
                        ),
                      ),
                    )
                  ],
                ),
              ), 
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 12),
              //   child: Text.rich(
              //     TextSpan(
              //       text: 'Press', 
              //       style: TextStyle(
              //         fontWeight: FontWeight.w800, 
              //         color: Colors.indigo.shade900,
              //         fontSize: 25, 
              //       ), 
              //       children: <TextSpan>[
              //         TextSpan(
              //           text: ' the Emergency Button', 
              //           style: TextStyle(
              //             fontWeight: FontWeight.w400, 
              //             color: Colors.indigo.shade500
              //           )
              //         ),
              //         TextSpan(
              //           text: ' for 3 Seconds', 
              //         ),
              //       ]
              //     ),
              //     textAlign: TextAlign.center,
              //   ),
              // ),
              Container(
                // margin: EdgeInsets.only(top: 24),
                child: _Button()
              ), 
              Container(
                margin: const EdgeInsets.only(top: 60, left: 12, right: 12),
                child: const Text.rich(
                  TextSpan(
                    text: 'Note:', 
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w800, 
                      color: Colors.black
                    ), 
                    children: <TextSpan>[
                      TextSpan(
                        text: ' wait until the ', 
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black
                        )
                      ), 
                      TextSpan(
                        text: 'emergency', 
                        style: TextStyle(
                          color: Colors.red, 
                          fontWeight: FontWeight.w500
                        )
                      ), 
                      TextSpan(
                        text: ' changed into ', 
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black
                        )
                      ), 
                      TextSpan(
                        text: 'done', 
                        style: TextStyle(
                          color: Colors.red, 
                          fontWeight: FontWeight.w500
                        )
                      ), 
                    ]
                  )
                ),
              ), 
              Container(
                margin: const EdgeInsets.only(top: 20, left: 12, right: 12),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade50.withOpacity(0.8), 
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      text: 'This feature is available for ',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo.shade400,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'free',
                          style: TextStyle(
                            color: Colors.indigo.shade800,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const TextSpan(
                          text: ' only in the ',
                        ),
                        TextSpan(
                          text: 'Balikpapan ',
                          style: TextStyle(
                            color: Colors.indigo.shade800,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const TextSpan(
                          text: 'area. Please make sure to use it only in emergency situations',
                        )
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      title: Container(
        margin: const EdgeInsets.only(top: 3),
        child: Image.asset(
          'assets/img/BSWblack.png',
          width: 120,
        ),
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Transform.scale(
          scale: 0.7,
          child: SvgPicture.asset(
            'assets/icons/left-arrow.svg'
          ),
        ),
      ),
      iconTheme: const IconThemeData(color: Color.fromARGB(255, 53, 129, 192)),
      elevation: 10.0,
      backgroundColor: Colors.white,
    );
  }
}



class _Button extends StatefulWidget {
  @override
  __ButtonState createState() => __ButtonState();
}

class __ButtonState extends State<_Button> {
  bool isPressed = false;
  bool disabled = false;
  double timePressed = 3;
  String btnIndicator = 'EMERGENCY';
  late Timer _timer;

  @override
  void dispose() {
    if (_timer != null) {
      _timer.cancel();
    }
    super.dispose();
  }

  void startCountdown() {
    _timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      setState(() {
        if (timePressed > 0) {
          timePressed -= 1;
        } else {
          if (_timer != null) {
            _timer.cancel();
          }
          // Handle countdown completion
          print('Countdown completed!');
          btnIndicator = 'DONE!';
          // Enable the button after the countdown
          setState(() {
            disabled = false;
          });
        }
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          child: Text.rich(
            TextSpan(
              text: 'Press',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.indigo.shade900,
                fontSize: 25,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: ' the Emergency Button',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.indigo.shade500)),
                TextSpan(
                  text: ' for ${timePressed.toInt()} Seconds',
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 24),
          child: GestureDetector(
            onTapDown: (_) {
              btnIndicator = 'EMERGENCY';
              if (!disabled) {
                setState(() {
                  isPressed = true;
                  disabled = true; // Disable the button
                });
                timePressed = 3;
                startCountdown();
              }
            },
            onTapUp: (_) {
              setState(() {
                isPressed = false;
              });
              // Cancel the countdown timer when the button is released
              if (_timer != null) {
                _timer.cancel();
              }
              setState(() {
                disabled = false;
              });
              print('Button pressed!');
            },

            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              width: 250.0,
              height: 250.0,
              transform: isPressed ? Matrix4.translationValues(0, 30, 0) : Matrix4.identity(),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
                boxShadow: isPressed
                    ? []
                    : [
                        BoxShadow(
                          color: const Color.fromARGB(255, 139, 11, 11).withOpacity(0.3),
                          spreadRadius: 4,
                          blurRadius: 30,
                          offset: const Offset(0, 18),
                        ),
                        BoxShadow(
                          color:Colors.red.shade800,
                          spreadRadius: 8,
                          offset: const Offset(0, 20),
                        ),
                      ],
              ),
              child: Center(
                child: Text(
                  btnIndicator,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
