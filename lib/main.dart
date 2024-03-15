import 'package:flutter/material.dart';
import 'package:lvl02_quiz_hsi/pages/halaman_awal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color(0XFFf8f8f8),
      debugShowCheckedModeBanner: false,
      home: const HalamanAwal(),
      initialRoute: HalamanAwal.nameRoute,
      routes: {
        HalamanAwal.nameRoute: (context) => const HalamanAwal(),
      },
    );
  }
}
