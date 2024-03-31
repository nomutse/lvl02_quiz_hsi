// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:lvl02_quiz_hsi/pages/halaman_awal.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';

class HalamanDua extends StatelessWidget {
  const HalamanDua({super.key});
  static const nameRoute = '/halamandua';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Akademik',
          style: TextStyle(
            fontFamily: 'PlusJakartaSans.bold',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF233975),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'AKADEMIK',
              style: TextStyle(
                fontFamily: 'PlusJakartaSans',
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              '* Dengarkan Audio',
              style: TextStyle(
                fontFamily: 'PlusJakartaSans',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(
              'assets/icons/topi_wisuda.png',
              width: 60,
              height: 60,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(HalamanAwal.nameRoute);
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFF233975),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Kembali ke Home',
                  style: TextStyle(
                    fontFamily: 'PlusJakartaSans',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
