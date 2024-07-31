class PokemonCries {
  final String latest;
  final String legacy;

  PokemonCries({required this.latest, required this.legacy});

  factory PokemonCries.fromJson(Map<String, dynamic> json) {
    return PokemonCries(latest: json['latest'], legacy: json['legacy']);
  }

  Map<String, dynamic> toJson() {
    return {
      'latest': latest,
      'legacy': legacy,
    };
  }
}
