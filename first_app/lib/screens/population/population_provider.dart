import 'dart:convert';

import 'package:first_app/screens/population/population_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PopulationProvider extends ChangeNotifier {
  Future<List<PopulationModel>> getPopulationData() async {
    Uri url = Uri.parse(
        'https://datausa.io/api/data?drilldowns=Nation&measures=Population');

    var response = await http.get(url);

    var json = jsonDecode(response.body);

    List<PopulationModel> resultList = [];

    for (var element in (json["data"] as List)) {
      PopulationModel tmp = PopulationModel.fromJson(element);
      resultList.add(tmp);
    }

    await Future.delayed(const Duration(seconds: 3));
    return resultList;
  }
}
