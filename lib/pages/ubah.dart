import 'package:flutter/material.dart';
import 'package:lvl02_quiz_hsi/pages/halaman_awal.dart';

// ignore: camel_case_types
class ubah extends StatelessWidget {
  const ubah({super.key});
  static const nameRoute = '/ubah';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ubah Page Profil',
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
              'Ubah Page Profil',
              style: TextStyle(
                fontFamily: 'PlusJakartaSans',
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              '* Ubah dari page Profile\n* Unduh \n* Pesan Syahadah\n* Hubungi\n* Info Lainnya\n* Ganti Password\n* Bantuan\n* Kebijakan Privasi\n* Keluar',
              style: TextStyle(
                fontFamily: 'PlusJakartaSans',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Image.asset(
              'assets/icons/profil_page.png',
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
