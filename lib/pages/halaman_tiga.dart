import 'package:flutter/material.dart';

class HalamanTiga extends StatelessWidget {
  const HalamanTiga({super.key});
  static const nameRoute = '/halamantiga';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reguler'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'REGULER',
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
