class PokemonDetails2 {
  final List<Ability> abilities;
  final int baseExperience;
  final Cries? cries;
  final List<Form> forms;
  final List<GameIndex> gameIndices;
  final int height;
  final List<HeldItem> heldItems;
  final int id;
  final bool isDefault;
  final String? locationAreaEncounters;
  final List<Move> moves;
  final String name;
  final int order;
  final List<dynamic> pastAbilities;
  final List<dynamic> pastTypes;
  final Species species;
  final Sprites sprites;
  final List<Stat> stats;
  final List<Type> types;
  final int weight;

  PokemonDetails2({
    required this.abilities,
    required this.baseExperience,
    this.cries,
    required this.forms,
    required this.gameIndices,
    required this.height,
    required this.heldItems,
    required this.id,
    required this.isDefault,
    this.locationAreaEncounters,
    required this.moves,
    required this.name,
    required this.order,
    required this.pastAbilities,
    required this.pastTypes,
    required this.species,
    required this.sprites,
    required this.stats,
    required this.types,
    required this.weight,
  });

  factory PokemonDetails2.fromJson(Map<String, dynamic> json) {
    return PokemonDetails2(
      abilities:
          List<Ability>.from(json['abilities'].map((x) => Ability.fromJson(x))),
      baseExperience: json['base_experience'],
      cries: json['cries'] != null ? Cries.fromJson(json['cries']) : null,
      forms: List<Form>.from(json['forms'].map((x) => Form.fromJson(x))),
      gameIndices: List<GameIndex>.from(
          json['game_indices'].map((x) => GameIndex.fromJson(x))),
      height: json['height'],
      heldItems: List<HeldItem>.from(
          json['held_items'].map((x) => HeldItem.fromJson(x))),
      id: json['id'],
      isDefault: json['is_default'],
      locationAreaEncounters: json['location_area_encounters'],
      moves: List<Move>.from(json['moves'].map((x) => Move.fromJson(x))),
      name: json['name'],
      order: json['order'],
      pastAbilities: List<dynamic>.from(json['past_abilities']),
      pastTypes: List<dynamic>.from(json['past_types']),
      species: Species.fromJson(json['species']),
      sprites: Sprites.fromJson(json['sprites']),
      stats: List<Stat>.from(json['stats'].map((x) => Stat.fromJson(x))),
      types: List<Type>.from(json['types'].map((x) => Type.fromJson(x))),
      weight: json['weight'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'abilities': List<dynamic>.from(abilities.map((x) => x.toJson())),
      'base_experience': baseExperience,
      'cries': cries?.toJson(),
      'forms': List<dynamic>.from(forms.map((x) => x.toJson())),
      'game_indices': List<dynamic>.from(gameIndices.map((x) => x.toJson())),
      'height': height,
      'held_items': List<dynamic>.from(heldItems.map((x) => x.toJson())),
      'id': id,
      'is_default': isDefault,
      'location_area_encounters': locationAreaEncounters,
      'moves': List<dynamic>.from(moves.map((x) => x.toJson())),
      'name': name,
      'order': order,
      'past_abilities': List<dynamic>.from(pastAbilities),
      'past_types': List<dynamic>.from(pastTypes),
      'species': species.toJson(),
      'sprites': sprites.toJson(),
      'stats': List<dynamic>.from(stats.map((x) => x.toJson())),
      'types': List<dynamic>.from(types.map((x) => x.toJson())),
      'weight': weight,
    };
  }
}

class Ability {
  final AbilityDetails ability;
  final bool isHidden;
  final int slot;

  Ability({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  factory Ability.fromJson(Map<String, dynamic> json) {
    return Ability(
      ability: AbilityDetails.fromJson(json['ability']),
      isHidden: json['is_hidden'],
      slot: json['slot'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ability': ability.toJson(),
      'is_hidden': isHidden,
      'slot': slot,
    };
  }
}

class AbilityDetails {
  final String name;
  final String url;

  AbilityDetails({
    required this.name,
    required this.url,
  });

  factory AbilityDetails.fromJson(Map<String, dynamic> json) {
    return AbilityDetails(
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

class Cries {
  final String? latest;
  final String? legacy;

  Cries({
    this.latest,
    this.legacy,
  });

  factory Cries.fromJson(Map<String, dynamic> json) {
    return Cries(
      latest: json['latest'],
      legacy: json['legacy'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'latest': latest,
      'legacy': legacy,
    };
  }
}

class Form {
  final String name;
  final String url;

  Form({
    required this.name,
    required this.url,
  });

  factory Form.fromJson(Map<String, dynamic> json) {
    return Form(
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

class GameIndex {
  final int gameIndex;
  final Version version;

  GameIndex({
    required this.gameIndex,
    required this.version,
  });

  factory GameIndex.fromJson(Map<String, dynamic> json) {
    return GameIndex(
      gameIndex: json['game_index'],
      version: Version.fromJson(json['version']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'game_index': gameIndex,
      'version': version.toJson(),
    };
  }
}

class Version {
  final String name;
  final String url;

  Version({
    required this.name,
    required this.url,
  });

  factory Version.fromJson(Map<String, dynamic> json) {
    return Version(
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

class HeldItem {
  HeldItem();

  factory HeldItem.fromJson(Map<String, dynamic> json) {
    return HeldItem();
  }

  Map<String, dynamic> toJson() {
    return {};
  }
}

class Move {
  final MoveDetails move;
  final List<VersionGroupDetail> versionGroupDetails;

  Move({
    required this.move,
    required this.versionGroupDetails,
  });

  factory Move.fromJson(Map<String, dynamic> json) {
    return Move(
      move: MoveDetails.fromJson(json['move']),
      versionGroupDetails: List<VersionGroupDetail>.from(
          json['version_group_details']
              .map((x) => VersionGroupDetail.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'move': move.toJson(),
      'version_group_details':
          List<dynamic>.from(versionGroupDetails.map((x) => x.toJson())),
    };
  }
}

class MoveDetails {
  final String name;
  final String url;

  MoveDetails({
    required this.name,
    required this.url,
  });

  factory MoveDetails.fromJson(Map<String, dynamic> json) {
    return MoveDetails(
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

class VersionGroupDetail {
  final int levelLearnedAt;
  final MoveLearnMethod moveLearnMethod;
  final VersionGroup versionGroup;

  VersionGroupDetail({
    required this.levelLearnedAt,
    required this.moveLearnMethod,
    required this.versionGroup,
  });

  factory VersionGroupDetail.fromJson(Map<String, dynamic> json) {
    return VersionGroupDetail(
      levelLearnedAt: json['level_learned_at'],
      moveLearnMethod: MoveLearnMethod.fromJson(json['move_learn_method']),
      versionGroup: VersionGroup.fromJson(json['version_group']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'level_learned_at': levelLearnedAt,
      'move_learn_method': moveLearnMethod.toJson(),
      'version_group': versionGroup.toJson(),
    };
  }
}

class MoveLearnMethod {
  final String name;
  final String url;

  MoveLearnMethod({
    required this.name,
    required this.url,
  });

  factory MoveLearnMethod.fromJson(Map<String, dynamic> json) {
    return MoveLearnMethod(
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

class VersionGroup {
  final String name;
  final String url;

  VersionGroup({
    required this.name,
    required this.url,
  });

  factory VersionGroup.fromJson(Map<String, dynamic> json) {
    return VersionGroup(
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

class Species {
  final String name;
  final String url;

  Species({
    required this.name,
    required this.url,
  });

  factory Species.fromJson(Map<String, dynamic> json) {
    return Species(
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

class Sprites {
  final String? backDefault;
  final String? backFemale;
  final String? backShiny;
  final String? backShinyFemale;
  final String? frontDefault;
  final String? frontFemale;
  final String? frontShiny;
  final String? frontShinyFemale;

  Sprites({
    this.backDefault,
    this.backFemale,
    this.backShiny,
    this.backShinyFemale,
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  factory Sprites.fromJson(Map<String, dynamic> json) {
    return Sprites(
      backDefault: json['back_default'],
      backFemale: json['back_female'],
      backShiny: json['back_shiny'],
      backShinyFemale: json['back_shiny_female'],
      frontDefault: json['front_default'],
      frontFemale: json['front_female'],
      frontShiny: json['front_shiny'],
      frontShinyFemale: json['front_shiny_female'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'back_default': backDefault,
      'back_female': backFemale,
      'back_shiny': backShiny,
      'back_shiny_female': backShinyFemale,
      'front_default': frontDefault,
      'front_female': frontFemale,
      'front_shiny': frontShiny,
      'front_shiny_female': frontShinyFemale,
    };
  }
}

class Stat {
  final int baseStat;
  final int effort;
  final StatDetails stat;

  Stat({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  factory Stat.fromJson(Map<String, dynamic> json) {
    return Stat(
      baseStat: json['base_stat'],
      effort: json['effort'],
      stat: StatDetails.fromJson(json['stat']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'base_stat': baseStat,
      'effort': effort,
      'stat': stat.toJson(),
    };
  }
}

class StatDetails {
  final String name;
  final String url;

  StatDetails({
    required this.name,
    required this.url,
  });

  factory StatDetails.fromJson(Map<String, dynamic> json) {
    return StatDetails(
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

class Type {
  final int slot;
  final TypeDetails type;

  Type({
    required this.slot,
    required this.type,
  });

  factory Type.fromJson(Map<String, dynamic> json) {
    return Type(
      slot: json['slot'],
      type: TypeDetails.fromJson(json['type']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'slot': slot,
      'type': type.toJson(),
    };
  }
}

class TypeDetails {
  final String name;
  final String url;

  TypeDetails({
    required this.name,
    required this.url,
  });

  factory TypeDetails.fromJson(Map<String, dynamic> json) {
    return TypeDetails(
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
