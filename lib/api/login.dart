import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lvl02_quiz_hsi/api/user_model.dart';
import 'package:lvl02_quiz_hsi/pages/bottom_nav.dart';
import 'package:lvl02_quiz_hsi/pages/halaman_awal.dart';
import 'dart:collection';

class Login extends StatelessWidget {
  const Login({super.key});
  static const nameRoute = '/Login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
        titleTextStyle: TextStyle(color: Colors.white),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController idController = TextEditingController();
  String output = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Text(
              'Nomer ID User : ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            TextFormField(
              controller: idController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Masukkan nomer ID';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (int.parse(idController.text) < (10)) {
                      var id = idController.text;
                      (User.getUsers(id).then((users) {
                        output = '';
                        for (int i = 0; i < 10; i++) {
                          output = users[i].street;
                        }
                        setState(() {});
                      }));
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          HalamanAwal(id: idController.text);
                          return BottomNavigationExample();
                        }),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Invalid Credentials')),
                      );
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Please fill input')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
