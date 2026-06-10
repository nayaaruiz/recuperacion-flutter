import 'dart:convert';

class PlanetListResponse {
  final List<Planet> results;

  PlanetListResponse({required this.results});

  factory PlanetListResponse.fromJson(Map<String, dynamic> json) {
    return PlanetListResponse(
      results: (json['results'] as List<dynamic>)
          .map((item) => Planet.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }

  factory PlanetListResponse.fromJsonString(String jsonString) {
    final decoded = json.decode(jsonString) as Map<String, dynamic>;
    return PlanetListResponse.fromJson(decoded);
  }

  Map<String, dynamic> toJson() {
    return {
      'results': results.map((planet) => planet.toJson()).toList(),
    };
  }
}

class Planet {
  final String name;
  final String rotationPeriod;
  final String orbitalPeriod;
  final String diameter;
  final String climate;
  final String gravity;
  final String terrain;
  final String surfaceWater;
  final String population;
  final List<String> residents;
  final List<String> films;
  final DateTime created;
  final DateTime edited;
  final String url;

  Planet({
    required this.name,
    required this.rotationPeriod,
    required this.orbitalPeriod,
    required this.diameter,
    required this.climate,
    required this.gravity,
    required this.terrain,
    required this.surfaceWater,
    required this.population,
    required this.residents,
    required this.films,
    required this.created,
    required this.edited,
    required this.url,
  });

  factory Planet.fromJson(Map<String, dynamic> json) {
    return Planet(
      name: json['name'] as String,
      rotationPeriod: json['rotation_period'] as String,
      orbitalPeriod: json['orbital_period'] as String,
      diameter: json['diameter'] as String,
      climate: json['climate'] as String,
      gravity: json['gravity'] as String,
      terrain: json['terrain'] as String,
      surfaceWater: json['surface_water'] as String,
      population: json['population'] as String,
      residents: List<String>.from(json['residents'] as List<dynamic>),
      films: List<String>.from(json['films'] as List<dynamic>),
      created: DateTime.parse(json['created'] as String),
      edited: DateTime.parse(json['edited'] as String),
      url: json['url'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'rotation_period': rotationPeriod,
      'orbital_period': orbitalPeriod,
      'diameter': diameter,
      'climate': climate,
      'gravity': gravity,
      'terrain': terrain,
      'surface_water': surfaceWater,
      'population': population,
      'residents': residents,
      'films': films,
      'created': created.toUtc().toIso8601String(),
      'edited': edited.toUtc().toIso8601String(),
      'url': url,
    };
  }
}
