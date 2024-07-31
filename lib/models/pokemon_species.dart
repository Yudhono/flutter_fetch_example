class PokemonSpecies {
  final String name;
  final String url;

  PokemonSpecies({required this.name, required this.url});

  factory PokemonSpecies.fromJson(Map<String, dynamic> json) {
    return PokemonSpecies(name: json['name'], url: json['url']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }
}
