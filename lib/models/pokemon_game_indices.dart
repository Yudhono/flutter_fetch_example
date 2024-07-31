class Version {
  final String name;
  final String url;

  Version({required this.name, required this.url});

  factory Version.fromJson(Map<String, dynamic> json) {
    return Version(name: json['name'], url: json['url']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }
}

class PokemonGameIndices {
  final int gameIndex;
  final Version version;

  PokemonGameIndices({required this.gameIndex, required this.version});

  factory PokemonGameIndices.fromJson(Map<String, dynamic> json) {
    return PokemonGameIndices(
        gameIndex: json['game_index'],
        version: Version.fromJson(json['version']));
  }

  Map<String, dynamic> toJson() {
    return {
      'gameIndex': gameIndex,
      'version': version,
    };
  }
}
