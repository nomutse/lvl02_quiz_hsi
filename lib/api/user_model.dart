import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lvl02_quiz_hsi/api/login.dart';

class User {
  String street;
  String suite;
  User({
    required this.street,
    required this.suite,
  });

  factory User.createUser(Map<String, dynamic> object) {
    return User(
      street: object['street'],
      suite: object['suite'],
    );
  }

  static Future<List<User>> getUsers(String id) async {
    Uri apiURL = Uri.parse('https://jsonplaceholder.typicode.com/users/${id}');
    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);
    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['address'];
    List<User> users = [];
    for (int i = 0; i < listUser.length; i++)
      users.add(User.createUser(listUser[i]));

    return users;
  }
}
