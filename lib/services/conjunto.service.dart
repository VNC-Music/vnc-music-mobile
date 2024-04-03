import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:vnc_music/services/services.dart';

import '../models/conjunto.model.dart';

class ConjuntoService {
  Future<List<Conjunto>> getList() async {
    var url = Uri.parse('$baseUrl/conjunto');
    try {
      var response = await http.get(Uri.parse('$baseUrl/conjunto'));
      if (response.statusCode == 200) {
        List<dynamic> listJson = jsonDecode(response.body);
        return listJson.map((element) {
          return Conjunto.fromJson(element);
        }).toList();
      }
      return [];
    } catch (e) {
      print(e);
      return [];
    }
  }
}
