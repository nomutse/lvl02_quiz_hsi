// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lvl02_quiz_hsi/api/user_model.dart';

import 'package:lvl02_quiz_hsi/pages/halaman_dua.dart';
import 'package:lvl02_quiz_hsi/pages/halaman_tiga.dart';
import 'package:lvl02_quiz_hsi/pages/carousel.dart';

import 'package:intl/intl.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lvl02_quiz_hsi/main.dart';

class HalamanAwal extends StatefulWidget {
  HalamanAwal({super.key, required this.id});
  String id;

  static const nameRoute = '/halamanawal';

  @override
  State<HalamanAwal> createState() => _HalamanAwalState();
}

String output = '';

class _HalamanAwalState extends State<HalamanAwal> {
  void Out() {
    (User.getUsers('5').then((users) {
      output = '';
      for (int i = 0; i < 10; i++) {
        output = users[i].street;
      }
      setState(() {});
    }));
  }

  @override
  Widget build(BuildContext context) {
    String datetime = DateFormat("EEE dd MMMM yyyy * HH:mm:ss")
        .format(DateTime.now())
        .toString();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFF233975),
          title: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Image.asset(
                  'assets/images/hsi.png',
                  width: 40,
                  height: 40,
                ),
                const SizedBox(width: 10),
                const Text(
                  'EDU HSI',
                  style: TextStyle(
                    fontFamily: 'PlusJakartaSans.bold',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ])),
          actions: const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'v.2401-2001',
                style: TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
          ],
          automaticallyImplyLeading: false),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            const Text(
              'Assalamualaikum,',
              style: TextStyle(
                color: Color(0XFFb3b3b3),
                fontFamily: 'PlusJakartaSans',
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 7),

            Text(
              output,

              //'Retno Mutiara Setianingrum',
              style: TextStyle(
                color: Color(0XFF393d41),
                fontFamily: 'PlusJakartaSans',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 7),
            const Text(
              'ART181-31149',
              style: TextStyle(
                color: Color(0XFFb3b3b3),
                fontFamily: 'PlusJakartaSans',
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 20),
            // ignore: sized_box_for_whitespace
            Container(
              height: 300,
              width: 300,
              child: CarouselWithIndicatorDemo(),
            ),
            const Text(
              'Evaluasi',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontFamily: 'PlusJakartaSans',
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Card(
              //borderOnForeground: true,
              //shadowColor: const Color.fromARGB(255, 0, 0, 0),
              color: Colors.white,

              //color: Color(0XFFf8f8f8),
              child: SizedBox(
                width: 300,
                //height: 350,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  width: 130,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: const Color(0XFFe8f0f8),
                                      borderRadius: BorderRadius.circular(7)),
                                  child: const Center(
                                      child: Text(
                                    'Program Reguler',
                                    style: TextStyle(
                                      color: Color(0XFF8898b8),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )),
                                ),
                              ],
                            ),
                            const Text(
                              'Selesai',
                              style: TextStyle(
                                color: Color(0XFF657bf4),
                              ),
                            )
                          ]),
                      SizedBox(height: 15),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'AWIT5.EP02',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Silsilah Ilmiyyah Pembahasan Kitab Al Aqidah Al Washitiyyah Bagian Kelima',
                        softWrap: true,
                      ),
                      SizedBox(height: 15),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 3, horizontal: 7),
                              //width: 80,
                              //height: 40,
                              decoration: BoxDecoration(
                                  color: Color(0XFFe9f0f8),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Center(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/list.png',
                                      width: 13,
                                      height: 13,
                                      color: Color(0XFF586a97),
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      '8 soal',
                                      style: TextStyle(
                                          color: Color(0XFF586a97),
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 3, horizontal: 7),
                              //width: 80,
                              //height: 40,
                              decoration: BoxDecoration(
                                  color: Color(0XFFe9f0f8),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Center(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/timer_slash.png',
                                      width: 13,
                                      height: 13,
                                      color: Color(0XFF586a97),
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      //'Senin, 11 Mar 2024.20:00',
                                      datetime,
                                      style: TextStyle(
                                          color: Color(0XFF586a97),
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ]),

                      SizedBox(height: 10),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                        child: Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: BorderSide(color: Color(0XFF213974)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(HalamanDua.nameRoute);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/icons/panah-kanan.png',
                                    width: 15,
                                    height: 15,
                                    color: Color(0XFF213974)),
                                SizedBox(width: 7),
                                Text(
                                  'Dengarkan Audio',
                                  style: TextStyle(
                                      color: Color(0XFF586a97),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Color(0XFF213974)),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(HalamanTiga.nameRoute);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Lembar Evaluasi',
                                style: TextStyle(
                                    color: Color(0XFF586a97),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 10),
                      //Text('Bottom Navigations')
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: BottomNavigationExample(),
    );
  }
}
