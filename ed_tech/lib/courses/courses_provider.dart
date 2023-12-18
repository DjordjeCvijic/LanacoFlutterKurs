import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CoursesProvider extends ChangeNotifier {
  List<StudentModel> studentsList = [];

//Logika za dohvatanje polaznika kursa sa servera
//https://jsonplaceholder.typicode.com/users

  Future<void> getUsers() async {
    // var url1 = Uri.https('jsonplaceholder.typicode.com', '/users');
    var url2 = Uri.parse('https://jsonplaceholder.typicode.com/users');

    var response = await http.get(url2);
    if (response.statusCode != 200) return;

    var decodedList = jsonDecode(response.body) as List;

    await Future.delayed(Duration(milliseconds: 800));
    for (var element in decodedList) {
      var student = StudentModel.fromJson(element);
      studentsList.add(student);
    }
  }
}

class StudentModel {
  final int id;
  final String name;
  final String username;
  final String email;
  final AddressModel address;
  final String website;

  StudentModel({
    required this.id,
    required this.email,
    required this.name,
    required this.address,
    required this.username,
    required this.website,
  });

  static StudentModel fromJson(var json) {
    return StudentModel(
      id: json['id'],
      email: json['email'],
      name: json['name'],
      address: AddressModel.fromJson(json['address']),
      username: json['username'],
      website: json['website'],
    );
  }
}

class AddressModel {
  final String street;
  final String city;
  final String? zipCode;

  AddressModel({
    required this.street,
    required this.city,
    required this.zipCode,
  });

  static AddressModel fromJson(var json) {
    return AddressModel(
      street: json['street'],
      city: json['city'],
      zipCode: json['zipcode'],
    );
  }
}
