import 'package:flutter_recuperacion/core/models/planet_list_response.dart';

abstract class PlanetListInterface {
  Future<List<Planet>> getPlanets();
}