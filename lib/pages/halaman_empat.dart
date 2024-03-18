import 'package:flutter/material.dart';

class HalamanEmpat extends StatelessWidget {
  const HalamanEmpat({super.key});
  static const nameRoute = '/halamanempat';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.yellowAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PROFILE',
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
