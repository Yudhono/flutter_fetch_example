class PokemonForms {
  final String name;
  final String url;

  PokemonForms({required this.name, required this.url});

  factory PokemonForms.fromJson(Map<String, dynamic> json) {
    return PokemonForms(name: json['name'], url: json['url']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }
}
