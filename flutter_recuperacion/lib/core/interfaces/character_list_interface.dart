import 'package:flutter_recuperacion/core/models/character_list_response.dart';

abstract class CharacterListInterface {
  Future<List<Character>> getCharacters();
}