import 'dart:convert';

import 'package:flutter_recuperacion/core/interfaces/planet_list_interface.dart';
import 'package:flutter_recuperacion/core/models/planet_list_response.dart';
import 'package:http/http.dart' as http;

class PlanetListService implements PlanetListInterface {

  final String _urlBase = 'https://swapi.info/planets';

  @override
  Future<List<Planet>> getPlanets() async {
    var url = Uri.parse(_urlBase);
    try {
      var response = await http.get(url);
      if (response.statusCode >= 200 && response.statusCode < 300) {
        var planets = PlanetListResponse.fromJson(
          jsonDecode(response.body),
        ).results;
        return planets;
      }
    } catch (e) {
      throw Exception("Error al cargar los planetas");
    }
    return [];
  }

}