import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '/courses/models/student_model.dart';

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

    for (var element in decodedList) {
      var student = StudentModel.fromJson(element);
      studentsList.add(student);
    }
  }
}
