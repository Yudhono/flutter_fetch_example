class Move {
  final String name;
  final String url;

  Move({required this.name, required this.url});

  factory Move.fromJson(Map<String, dynamic> json) {
    return Move(
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

class MoveLearnMethod {
  final String name;
  final String url;

  MoveLearnMethod({required this.name, required this.url});

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

  VersionGroup({required this.name, required this.url});

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

class VersionGroupDetails {
  final int levelLearnedAt;
  final MoveLearnMethod moveLearnMethod;
  final VersionGroup versionGroup;

  VersionGroupDetails(
      {required this.levelLearnedAt,
      required this.moveLearnMethod,
      required this.versionGroup});

  factory VersionGroupDetails.fromJson(Map<String, dynamic> json) {
    return VersionGroupDetails(
      levelLearnedAt: json['level_learned_at'],
      moveLearnMethod: MoveLearnMethod.fromJson(json['move_learn_method']),
      versionGroup: VersionGroup.fromJson(json['version_group']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'levelLearnedAt': levelLearnedAt,
      'moveLearnMethod': moveLearnMethod,
      'versionGroup': versionGroup
    };
  }
}

class PokemonMoves {
  final List<VersionGroupDetails> versionGroupDetails;
  final Move move;

  PokemonMoves({required this.versionGroupDetails, required this.move});

  factory PokemonMoves.fromJson(Map<String, dynamic> json) {
    return PokemonMoves(
      versionGroupDetails: json['version_group_details'] != null
          ? List<VersionGroupDetails>.from(json['version_group_details']
              .map((x) => VersionGroupDetails.fromJson(x)))
          : [],
      move: Move.fromJson(json['move']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'versionGroup': versionGroupDetails,
      'move': move,
    };
  }
}
