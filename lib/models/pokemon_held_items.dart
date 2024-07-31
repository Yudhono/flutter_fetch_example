class Item {
  final String name;
  final String url;

  Item({
    required this.name,
    required this.url,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
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

class VersionDetails {
  final int rarity;
  final Version version;

  VersionDetails({
    required this.rarity,
    required this.version,
  });

  factory VersionDetails.fromJson(Map<String, dynamic> json) {
    return VersionDetails(
      rarity: json['rarity'],
      version: Version.fromJson(json['version']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'rarity': rarity,
      'version': version,
    };
  }
}

class PokemonHeldItems {
  final Item item;
  final List<VersionDetails> versionDetails;

  PokemonHeldItems({
    required this.item,
    required this.versionDetails,
  });

  factory PokemonHeldItems.fromJson(Map<String, dynamic> json) {
    return PokemonHeldItems(
      item: Item.fromJson(json['item']),
      versionDetails: List<VersionDetails>.from(
          json['version_details'].map((x) => VersionDetails.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'item': item,
      'versionDetails': versionDetails,
    };
  }
}
