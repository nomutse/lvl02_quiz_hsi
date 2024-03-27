import 'package:flutter/material.dart';
import 'package:lvl02_quiz_hsi/pages/halaman_awal.dart';
import 'package:lvl02_quiz_hsi/pages/halaman_dua.dart';
import 'package:lvl02_quiz_hsi/pages/halaman_empat.dart';
import 'package:lvl02_quiz_hsi/pages/halaman_tiga.dart';

class BottomNavigationExample extends StatefulWidget {
  static const nameRoute = '/bottom_nav';
  const BottomNavigationExample({Key? key}) : super(key: key);

  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State {
  int _selectedTab = 0;

  final List _pages = [
    const HalamanAwal(),
    const HalamanDua(),
    const HalamanTiga(),
    const HalamanEmpat(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: const Color(0XFF243875),
        unselectedItemColor: const Color(0XFF757575),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/home.png'),
              //color: Color(0XFF757575),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/topi_wisuda.png'),
              //color: Color(0XFF757575),
            ),
            label: 'Akademik',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/kertas.png'),
              //color: Color(0XFF757575),
            ),
            label: 'Reguler',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/profile.png'),
              //color: Color(0XFF757575),
            ),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
