class PokemonTypeDetail {
  final String name;
  final String url;

  PokemonTypeDetail({required this.name, required this.url});

  factory PokemonTypeDetail.fromJson(Map<String, dynamic> json) {
    return PokemonTypeDetail(
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

class PokemonTypes {
  final int slot;
  final PokemonTypeDetail type;

  PokemonTypes({required this.slot, required this.type});

  factory PokemonTypes.fromJson(Map<String, dynamic> json) {
    return PokemonTypes(
      slot: json['slot'],
      type: PokemonTypeDetail.fromJson(json['type']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'slot': slot,
      'type': type,
    };
  }
}
