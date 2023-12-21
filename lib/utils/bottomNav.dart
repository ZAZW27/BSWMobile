import 'dart:html';

import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;
  List<Widget> body = const[
    Icon(Icons.home), 
    Icon(Icons.newspaper), 
    Icon(Icons.crisis_alert), 
    Icon(Icons.notifications_active), 
    Icon(Icons.person_2), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex){
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home', 
            icon: Icon(Icons.home), 
          ),
          BottomNavigationBarItem(
            label: 'Berita', 
            icon: Icon(Icons.newspaper), 
          ),
          BottomNavigationBarItem(
            label: 'Laporan', 
            icon: Icon(Icons.crisis_alert), 
          ),
          BottomNavigationBarItem(
            label: 'Notifikasi', 
            icon: Icon(Icons.notifications_active), 
          ),
          BottomNavigationBarItem(
            label: 'Profil', 
            icon: Icon(Icons.person_2), 
          ),
        ],
      ),
    );
  }
}