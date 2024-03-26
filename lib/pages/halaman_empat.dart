// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lvl02_quiz_hsi/pages/halaman_tiga.dart';

class HalamanEmpat extends StatelessWidget {
  const HalamanEmpat({super.key});
  static const nameRoute = '/halamanempat';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: const Color.fromARGB(255, 216, 229, 240),
        toolbarHeight: 100,
        elevation: 100,
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'V2402-2702',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 280,
                  //color: Colors.green,
                  child: Row(
                    children: [
                      Container(
                        //color: Colors.pink,
                        width: 50,
                        height: 50,
                        child: Image.asset(
                          'assets/images/hsi.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(width: 15, height: 70),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Retno Mutiara Stianingrum',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'ART181-31149',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(HalamanTiga.nameRoute);
                  },
                  child: Container(
                    //width: 50,
                    //height: 30,
                    //color: Colors.amber,
                    margin: EdgeInsets.symmetric(horizontal: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/icons/kertas_pensil.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Ubah',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Image.asset(
                    'assets/icons/phone.png',
                    width: 20,
                    height: 30,
                    color: Color.fromARGB(255, 34, 67, 133),
                    alignment: Alignment.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Nomor Whatsapp',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontFamily: 'PlusJakartaSans',
                        ),
                      ),
                      Text(
                        '62-8156892016',
                        style: TextStyle(
                          fontFamily: 'PlusJakartaSans',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Image.asset(
                    'assets/icons/home_no_door.png',
                    width: 20,
                    height: 30,
                    color: Color.fromARGB(255, 34, 67, 133),
                    alignment: Alignment.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Alamat',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontFamily: 'PlusJakartaSans',
                        ),
                      ),
                      Text(
                        'Emerald Terrace Blok D 9, Kelurahan Parigi, \nKecamatan Pondok Aren',
                        style: TextStyle(
                          fontFamily: 'PlusJakartaSans',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Image.asset(
                    'assets/icons/location.png',
                    width: 20,
                    height: 30,
                    alignment: Alignment.center,
                    color: Color.fromARGB(255, 8, 30, 74),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Kabupaten/Kota, Provinsi, Kode Pos',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontFamily: 'PlusJakartaSans',
                        ),
                      ),
                      Text(
                        'KOTA TANGERANG SELATAN, BANTEN, 15227',
                        style: TextStyle(
                          fontFamily: 'PlusJakartaSans',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Image.asset(
                    'assets/icons/cincin.png',
                    width: 20,
                    height: 30,
                    color: Color.fromARGB(255, 8, 30, 74),
                    alignment: Alignment.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Status Pernikahan / Jumlah Anak',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontFamily: 'PlusJakartaSans',
                        ),
                      ),
                      Text(
                        'Menikah / 2',
                        style: TextStyle(
                          fontFamily: 'PlusJakartaSans',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 1.0,
              width: 130.0,
              color: Color.fromRGBO(158, 158, 158, 0.497),
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: 40,
                width: 8,
              ),
              Image.asset(
                'assets/icons/syahadah.png',
                width: 30,
                height: 15,
                color: Color.fromARGB(255, 34, 67, 133),
              ),
              Text(
                'Syahadah & Transkrip',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Silsilah Ilmiyyah Pembahasan Kitab \nAl Aqidah Al Wasithiyyah Bagian Keempat \nREG-2024-S1',
                  style: TextStyle(
                    fontFamily: 'PlusJakartaSans',
                    fontSize: 13,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(HalamanTiga.nameRoute);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 7),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(46, 126, 159, 242),
                      borderRadius: BorderRadius.circular(20),
                      //border: Border.all(
                      //width: 1,
                      //color: Colors.black,
                      //),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Unduh',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 34, 67, 133),
                          ),
                        ),
                        SizedBox(width: 5),
                        Image.asset(
                          'assets/icons/download.png',
                          width: 15,
                          height: 15,
                          color: Color.fromARGB(255, 34, 67, 133),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 1.0,
              width: 130.0,
              color: Color.fromRGBO(158, 158, 158, 0.497),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pesan Syahadah versi cetak di',
                  style: TextStyle(
                    fontFamily: 'PlusJakartaSans',
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(HalamanTiga.nameRoute);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(46, 126, 159, 242),
                      borderRadius: BorderRadius.circular(20),
                      //border: Border.all(
                      //width: 1,
                      //color: Colors.black,
                      //),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/pernik_hsi.png',
                          width: 20,
                          height: 20,
                          //color: Color.fromARGB(255, 34, 67, 133),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Pesan Syahadah',
                          style: TextStyle(
                            color: Color.fromARGB(255, 34, 67, 133),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 1.0,
              width: 130.0,
              color: Color.fromRGBO(158, 158, 158, 0.497),
            ),
          ),

          Row(
            children: [
              SizedBox(
                height: 40,
                width: 12,
              ),
              Image.asset(
                'assets/icons/headset.png',
                width: 20,
                height: 20,
                color: Color.fromARGB(255, 34, 67, 133),
              ),
              SizedBox(width: 12),
              Text(
                'List Musyrif / Musyrifah',
                style: TextStyle(
                    //color: Color.fromARGB(255, 34, 67, 133),
                    fontSize: 13,
                    fontFamily: 'PlusJakartaSans',
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: const [
              Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
              Text(
                'Diah R.I.S',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'PlusJakartaSans',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 20),
              Text(
                '(ART171-15037) ',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'PlusJakartaSans',
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'PLACEMENT TEST SANDBOX 3 \nGrup: CALON PESERTA ART',
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'PlusJakartaSans',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'SANDBOX',
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'PlusJakartaSans',
                    color: Color.fromARGB(255, 34, 67, 133),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(HalamanTiga.nameRoute);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(252, 37, 224, 16),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Hubungi',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 5),
                        Image.asset(
                          'assets/icons/phone.png',
                          width: 20,
                          height: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 1.0,
              width: 130.0,
              color: Color.fromRGBO(158, 158, 158, 0.497),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: const [
              Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
              Text(
                'Kurnia Adhiwibowo',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'PlusJakartaSans',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 20),
              Text(
                '(ARN151-0358) ',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'PlusJakartaSans',
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'PLACEMENT TEST SANDBOX 3 \nGrup: CALON PESERTA ART',
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'PlusJakartaSans',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'SANDBOX',
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'PlusJakartaSans',
                    color: Color.fromARGB(255, 34, 67, 133),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(HalamanTiga.nameRoute);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(252, 37, 224, 16),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Hubungi',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 5),
                        Image.asset(
                          'assets/icons/phone.png',
                          width: 20,
                          height: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 1.0,
              width: 130.0,
              color: Color.fromRGBO(158, 158, 158, 0.497),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: const [
              Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
              Text(
                'Asdewi Uzer',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'PlusJakartaSans',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 20),
              Text(
                '(ART172-11017) ',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'PlusJakartaSans',
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'Silsilah Ilmiyyah Pembahasan Kitab Al Aqidah Al Wasithiyyah \nBagian Kelima',
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'PlusJakartaSans',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Program Reguler',
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'PlusJakartaSans',
                    color: Color.fromARGB(255, 34, 67, 133),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(HalamanTiga.nameRoute);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(252, 37, 224, 16),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Hubungi',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 5),
                        Image.asset(
                          'assets/icons/phone.png',
                          width: 20,
                          height: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 1.0,
              width: 130.0,
              color: Color.fromRGBO(158, 158, 158, 0.497),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 15, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 12,
                    ),
                    Image.asset(
                      'assets/icons/info.png',
                      width: 20,
                      height: 20,
                      color: Color.fromARGB(255, 2, 54, 158),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Info Lainnya',
                      style: TextStyle(
                          //color: Color.fromARGB(255, 34, 67, 133),
                          fontSize: 13,
                          fontFamily: 'PlusJakartaSans',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/icons/panah_garis.png',
                  width: 15,
                  height: 15,
                  color: Color.fromARGB(255, 2, 54, 158),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 1.0,
              width: 130.0,
              color: Color.fromRGBO(158, 158, 158, 0.497),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 15, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 12,
                    ),
                    Image.asset(
                      'assets/icons/gembok.png',
                      width: 20,
                      height: 20,
                      color: Color.fromARGB(255, 2, 54, 158),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Ganti Password',
                      style: TextStyle(
                          //color: Color.fromARGB(255, 34, 67, 133),
                          fontSize: 13,
                          fontFamily: 'PlusJakartaSans',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/icons/panah_garis.png',
                  width: 15,
                  height: 15,
                  color: Color.fromARGB(255, 2, 54, 158),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 1.0,
              width: 130.0,
              color: Color.fromRGBO(158, 158, 158, 0.497),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 15, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 12,
                    ),
                    Image.asset(
                      'assets/icons/tanya.png',
                      width: 20,
                      height: 20,
                      color: Color.fromARGB(255, 2, 54, 158),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Bantuan',
                      style: TextStyle(
                          //color: Color.fromARGB(255, 34, 67, 133),
                          fontSize: 13,
                          fontFamily: 'PlusJakartaSans',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/icons/panah_garis.png',
                  width: 15,
                  height: 15,
                  color: Color.fromARGB(255, 2, 54, 158),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 1.0,
              width: 130.0,
              color: Color.fromRGBO(158, 158, 158, 0.497),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 15, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 12,
                    ),
                    Image.asset(
                      'assets/icons/cek.png',
                      width: 20,
                      height: 20,
                      color: Color.fromARGB(255, 2, 54, 158),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Kebijakan Privasi',
                      style: TextStyle(
                          //color: Color.fromARGB(255, 34, 67, 133),
                          fontSize: 13,
                          fontFamily: 'PlusJakartaSans',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/icons/panah_garis.png',
                  width: 15,
                  height: 15,
                  color: Color.fromARGB(255, 2, 54, 158),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: Colors.white,
                side: BorderSide(color: Color(0XFF213974)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(HalamanTiga.nameRoute);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Keluar',
                    style: TextStyle(
                        color: Color(0XFF586a97), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
