class Ability {
  final String name;
  final String url;

  Ability({required this.name, required this.url});

  factory Ability.fromJson(Map<String, dynamic> json) {
    return Ability(name: json['name'], url: json['url']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }
}

class PokemonAbilities {
  final Ability ability;
  final bool isHidden;
  final int slot;

  PokemonAbilities(
      {required this.ability, required this.isHidden, required this.slot});

  factory PokemonAbilities.fromJson(Map<String, dynamic> json) {
    return PokemonAbilities(
      ability: Ability.fromJson(json['ability']),
      isHidden: json['is_hidden'],
      slot: json['slot'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['is_hidden'] = isHidden;
    data['slot'] = slot;
    data['ability'] = ability.toJson();
    return data;
  }
}
