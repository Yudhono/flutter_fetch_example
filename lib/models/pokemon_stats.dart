class StatDetail {
  final String name;
  final String url;

  StatDetail({required this.name, required this.url});

  factory StatDetail.fromJson(Map<String, dynamic> json) {
    return StatDetail(
      name: json['name'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }
}

class PokemonStats {
  final int baseStat;
  final int effort;
  final StatDetail stat;

  PokemonStats(
      {required this.baseStat, required this.effort, required this.stat});

  factory PokemonStats.fromJson(Map<String, dynamic> json) {
    return PokemonStats(
      baseStat: json['base_stat'],
      effort: json['effort'],
      stat: StatDetail.fromJson(json['stat']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'baseStat': baseStat,
      'effort': effort,
      'stat': stat.toJson(),
    };
  }
}
