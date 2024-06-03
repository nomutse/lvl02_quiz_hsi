import 'package:flutter/material.dart';
import 'package:lvl02_quiz_hsi/model/murid.dart';

import 'package:lvl02_quiz_hsi/pages/bottom_nav.dart';
import 'package:lvl02_quiz_hsi/pages/halaman_awal.dart';
import 'package:lvl02_quiz_hsi/pages/halaman_dua.dart';
import 'package:lvl02_quiz_hsi/pages/halaman_tiga.dart';
import 'package:lvl02_quiz_hsi/pages/halaman_empat.dart';
//import 'package:lvl02_quiz_hsi/pages/home_page.dart';

import 'package:lvl02_quiz_hsi/pages/ubah.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:lvl02_quiz_hsi/api/login.dart';

Future<void> main() async {
  // initialize hive path and database
  //Hive.init(dir.path);

  WidgetsFlutterBinding.ensureInitialized();
  var directory = await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  await Hive.initFlutter();
  await Hive.openBox('data_box');
  Hive.registerAdapter(MuridAdapter());
  var muridBox = await Hive.openBox('data_box');
  await muridBox.put('murid1', {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "street": "Kulas Light",
    "address_suite": "Apt. 556",
    "address_city": "Gwenborough",
    "address_zipcode": "92998-3874",
    "phone": "1-770-736-8031 x56442",
  });
/*   final responseMurid1 = muridBox.get('murid1');
  print(responseMurid1['id']);
  final responseMurid1Name = print(responseMurid1['name']);
  print(responseMurid1['username']);
  print(muridBox.get('murid1')['phone']); */

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: const Color(0XFFf8f8f8),
      debugShowCheckedModeBanner: false,
      home: const Login(),
      initialRoute: Login.nameRoute,
      routes: {
        HalamanAwal.nameRoute: (context) => HalamanAwal(
              id: '5',
            ),
        HalamanDua.nameRoute: (context) => const HalamanDua(),
        HalamanTiga.nameRoute: (context) => const HalamanTiga(),
        HalamanEmpat.nameRoute: (context) => HalamanEmpat(),
        //HomeScreen.nameRoute: (context) => const HomeScreen(),
        ubah.nameRoute: (context) => const ubah(),
        BottomNavigationExample.nameRoute: (context) =>
            const BottomNavigationExample(),
        Login.nameRoute: (context) => const Login(),
      },
    );
  }
}
