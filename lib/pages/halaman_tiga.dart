import 'package:flutter/material.dart';
import 'package:lvl02_quiz_hsi/pages/halaman_awal.dart';

class HalamanTiga extends StatelessWidget {
  const HalamanTiga({super.key});
  static const nameRoute = '/halamantiga';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reguler',
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
              'REGULER',
              style: TextStyle(
                fontFamily: 'PlusJakartaSans',
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              '* Lembar Evaluasi',
              style: TextStyle(
                fontFamily: 'PlusJakartaSans',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(
              'assets/icons/kertas.png',
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
