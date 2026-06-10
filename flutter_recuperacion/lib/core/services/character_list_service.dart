import 'dart:convert';

import 'package:flutter_recuperacion/core/interfaces/character_list_interface.dart';
import 'package:flutter_recuperacion/core/models/character_list_response.dart';
import 'package:http/http.dart' as http;

class CharacterListService implements CharacterListInterface {

  final String _urlBase = 'https://swapi.info/people';

  @override
  Future<List<Character>> getCharacters() async {
    var url = Uri.parse(_urlBase);
    try {
      var response = await http.get(url);
      if (response.statusCode >= 200 && response.statusCode < 300) {
        var characters = CharacterListResponse.fromJson(
          jsonDecode(response.body),
        ).results;
        return characters;
      }
    } catch (e) {
      throw Exception("Error al cargar los personajes");
    }
    return [];
  }

}