// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:food/model/modelFood.dart';
import 'package:http/http.dart' as http;


class Repository {
  final _baseUrl = 'https://test.klcoffeeindonesia.com/getfood.php';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<ModelFood> distri =
            it.map((e) => ModelFood.fromJson(e)).toList();
        return distri;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
