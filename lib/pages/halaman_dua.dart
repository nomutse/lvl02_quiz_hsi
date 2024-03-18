import 'package:flutter/material.dart';

class HalamanDua extends StatelessWidget {
  const HalamanDua({super.key});
  static const nameRoute = '/halamandua';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akademik'),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AKADEMIK',
          style: TextStyle(
            fontFamily: 'PlusJakartaSans',
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
