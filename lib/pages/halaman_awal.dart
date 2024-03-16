import 'package:flutter/material.dart';

class HalamanAwal extends StatelessWidget {
  const HalamanAwal({super.key});
  static const nameRoute = '/halamanawal';
  @override
  Widget build(BuildContext context) {
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
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'v.2401-2001',
                style: const TextStyle(
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
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          const Text(
            'Assalamualaikum,',
            style: TextStyle(
              color: Color(0XFFb3b3b3),
              fontFamily: 'PlusJakartaSans',
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          SizedBox(height: 7),
          const Text(
            'Retno Mutiara Setianingrum',
            style: TextStyle(
              color: Color(0XFF393d41),
              fontFamily: 'PlusJakartaSans',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 7),
          const Text(
            'ART181-31149',
            style: TextStyle(
              color: Color(0XFFb3b3b3),
              fontFamily: 'PlusJakartaSans',
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 20),
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
            borderOnForeground: true,
            shadowColor: Color.fromARGB(255, 0, 0, 0),

            //color: Color(0XFFf8f8f8),
            child: SizedBox(
              width: 300,
              //height: 350,
              child: Padding(
                padding: EdgeInsets.all(20),
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
                                    color: Color(0XFFe8f0f8),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Center(
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
                          Text(
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
                                    'Senin, 11 Mar 2024.20:00',
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
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      decoration: BoxDecoration(
                          color: Color(0Xfff8f8f8),
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Color(0XFF8d99b7))),
                      child: Center(
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

                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      decoration: BoxDecoration(
                          color: Color(0XFFf8f8f8),
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Color(0XFF8d99b7))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Lembar Evaluasi',
                            style: TextStyle(
                                color: Color(0XFF586a97),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 10),
                    //Text('Bottom Navigations')
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/home.png'),
              color: Color(0XFF757575),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/topi_wisuda.png'),
              color: Color(0XFF757575),
            ),
            label: 'Akademik',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/kertas.png'),
              color: Color(0XFF757575),
            ),
            label: 'Reguler',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/profile.png'),
              color: Color(0XFF757575),
            ),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
