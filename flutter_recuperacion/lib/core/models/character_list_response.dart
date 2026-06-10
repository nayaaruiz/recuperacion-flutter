class CharacterListResponse {
  final List<Character> results;

  CharacterListResponse({required this.results});

  factory CharacterListResponse.fromJson(Map<String, dynamic> json) {
    return CharacterListResponse(
      results: (json['results'] as List<dynamic>)
          .map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'results': results.map((e) => e.toJson()).toList(),
    };
  }
}

class Character {
  final String name;
  final String height;
  final String mass;
  final String hairColor;
  final String skinColor;
  final String eyeColor;
  final String birthYear;
  final String gender;
  final String homeworld;
  final List<String> films;
  final List<String> species;
  final List<String> vehicles;
  final List<String> starships;
  final String created;
  final String edited;
  final String url;

  Character({
    required this.name,
    required this.height,
    required this.mass,
    required this.hairColor,
    required this.skinColor,
    required this.eyeColor,
    required this.birthYear,
    required this.gender,
    required this.homeworld,
    required this.films,
    required this.species,
    required this.vehicles,
    required this.starships,
    required this.created,
    required this.edited,
    required this.url,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      name: json['name'] as String? ?? '',
      height: json['height'] as String? ?? '',
      mass: json['mass'] as String? ?? '',
      hairColor: json['hair_color'] as String? ?? '',
      skinColor: json['skin_color'] as String? ?? '',
      eyeColor: json['eye_color'] as String? ?? '',
      birthYear: json['birth_year'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      homeworld: json['homeworld'] as String? ?? '',
      films: List<String>.from(json['films'] as List<dynamic>? ?? []),
      species: List<String>.from(json['species'] as List<dynamic>? ?? []),
      vehicles: List<String>.from(json['vehicles'] as List<dynamic>? ?? []),
      starships: List<String>.from(json['starships'] as List<dynamic>? ?? []),
      created: json['created'] as String? ?? '',
      edited: json['edited'] as String? ?? '',
      url: json['url'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'height': height,
      'mass': mass,
      'hair_color': hairColor,
      'skin_color': skinColor,
      'eye_color': eyeColor,
      'birth_year': birthYear,
      'gender': gender,
      'homeworld': homeworld,
      'films': films,
      'species': species,
      'vehicles': vehicles,
      'starships': starships,
      'created': created,
      'edited': edited,
      'url': url,
    };
  }
}
