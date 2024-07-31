class PokemonSprites {
  final String backDefault;
  final String backFemale;
  final String backShiny;
  final String backShinyFemale;
  final String frontDefault;
  final String frontFemale;
  final String frontShiny;
  final String frontShinyFemale;
  final Other other;
  final Versions versions;

  PokemonSprites({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
    required this.other,
    required this.versions,
  });

  factory PokemonSprites.fromJson(Map<String, dynamic> json) {
    return PokemonSprites(
      backDefault: json['back_default'],
      backFemale: json['back_female'],
      backShiny: json['back_shiny'],
      backShinyFemale: json['back_shiny_female'],
      frontDefault: json['front_default'],
      frontFemale: json['front_female'],
      frontShiny: json['front_shiny'],
      frontShinyFemale: json['front_shiny_female'],
      other: Other.fromJson(json['other']),
      versions: Versions.fromJson(json['versions']),
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
      'other': other.toJson(),
      'versions': versions.toJson(),
    };
  }
}

class Other {
  final DreamWorld dreamWorld;
  final Home home;
  final OfficialArtwork officialArtwork;
  final Showdown showdown;

  Other({
    required this.dreamWorld,
    required this.home,
    required this.officialArtwork,
    required this.showdown,
  });

  factory Other.fromJson(Map<String, dynamic> json) {
    return Other(
      dreamWorld: DreamWorld.fromJson(json['dream_world']),
      home: Home.fromJson(json['home']),
      officialArtwork: OfficialArtwork.fromJson(json['official-artwork']),
      showdown: Showdown.fromJson(json['showdown']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dream_world': dreamWorld.toJson(),
      'home': home.toJson(),
      'official-artwork': officialArtwork.toJson(),
      'showdown': showdown.toJson(),
    };
  }
}

class DreamWorld {
  final String frontDefault;
  final String frontFemale;

  DreamWorld({required this.frontDefault, required this.frontFemale});

  factory DreamWorld.fromJson(Map<String, dynamic> json) {
    return DreamWorld(
      frontDefault: json['front_default'],
      frontFemale: json['front_female'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'front_default': frontDefault,
      'front_female': frontFemale,
    };
  }
}

class Home {
  final String frontDefault;
  final String frontFemale;
  final String frontShiny;
  final String frontShinyFemale;

  Home({
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory Home.fromJson(Map<String, dynamic> json) {
    return Home(
      frontDefault: json['front_default'],
      frontFemale: json['front_female'],
      frontShiny: json['front_shiny'],
      frontShinyFemale: json['front_shiny_female'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'front_default': frontDefault,
      'front_female': frontFemale,
      'front_shiny': frontShiny,
      'front_shiny_female': frontShinyFemale,
    };
  }
}

class OfficialArtwork {
  final String frontDefault;
  final String frontShiny;

  OfficialArtwork({required this.frontDefault, required this.frontShiny});

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) {
    return OfficialArtwork(
      frontDefault: json['front_default'],
      frontShiny: json['front_shiny'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'front_default': frontDefault,
      'front_shiny': frontShiny,
    };
  }
}

class Showdown {
  final String backDefault;
  final String backFemale;
  final String backShiny;
  final String backShinyFemale;
  final String frontDefault;
  final String frontFemale;
  final String frontShiny;
  final String frontShinyFemale;

  Showdown({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory Showdown.fromJson(Map<String, dynamic> json) {
    return Showdown(
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

class Versions {
  final GenerationI generationI;
  final GenerationII generationII;
  final GenerationIII generationIII;
  final GenerationIV generationIV;
  final GenerationV generationV;
  final GenerationVI generationVI;
  final GenerationVII generationVII;
  final GenerationVIII generationVIII;

  Versions({
    required this.generationI,
    required this.generationII,
    required this.generationIII,
    required this.generationIV,
    required this.generationV,
    required this.generationVI,
    required this.generationVII,
    required this.generationVIII,
  });

  factory Versions.fromJson(Map<String, dynamic> json) {
    return Versions(
      generationI: GenerationI.fromJson(json['generation-i']),
      generationII: GenerationII.fromJson(json['generation-ii']),
      generationIII: GenerationIII.fromJson(json['generation-iii']),
      generationIV: GenerationIV.fromJson(json['generation-iv']),
      generationV: GenerationV.fromJson(json['generation-v']),
      generationVI: GenerationVI.fromJson(json['generation-vi']),
      generationVII: GenerationVII.fromJson(json['generation-vii']),
      generationVIII: GenerationVIII.fromJson(json['generation-viii']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'generation-i': generationI.toJson(),
      'generation-ii': generationII.toJson(),
      'generation-iii': generationIII.toJson(),
      'generation-iv': generationIV.toJson(),
      'generation-v': generationV.toJson(),
      'generation-vi': generationVI.toJson(),
      'generation-vii': generationVII.toJson(),
      'generation-viii': generationVIII.toJson(),
    };
  }
}

// Repeat similar classes for each generation, like GenerationI, GenerationII, etc.

class GenerationI {
  final RedBlue redBlue;
  final Yellow yellow;

  GenerationI({required this.redBlue, required this.yellow});

  factory GenerationI.fromJson(Map<String, dynamic> json) {
    return GenerationI(
      redBlue: RedBlue.fromJson(json['red-blue']),
      yellow: Yellow.fromJson(json['yellow']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'red-blue': redBlue.toJson(),
      'yellow': yellow.toJson(),
    };
  }
}

class RedBlue {
  final String backDefault;
  final String backGray;
  final String backTransparent;
  final String frontDefault;
  final String frontGray;
  final String frontTransparent;

  RedBlue({
    required this.backDefault,
    required this.backGray,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontGray,
    required this.frontTransparent,
  });

  factory RedBlue.fromJson(Map<String, dynamic> json) {
    return RedBlue(
      backDefault: json['back_default'],
      backGray: json['back_gray'],
      backTransparent: json['back_transparent'],
      frontDefault: json['front_default'],
      frontGray: json['front_gray'],
      frontTransparent: json['front_transparent'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'back_default': backDefault,
      'back_gray': backGray,
      'back_transparent': backTransparent,
      'front_default': frontDefault,
      'front_gray': frontGray,
      'front_transparent': frontTransparent,
    };
  }
}

class Yellow {
  final String backDefault;
  final String backGray;
  final String backTransparent;
  final String frontDefault;
  final String frontGray;
  final String frontTransparent;

  Yellow({
    required this.backDefault,
    required this.backGray,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontGray,
    required this.frontTransparent,
  });

  factory Yellow.fromJson(Map<String, dynamic> json) {
    return Yellow(
      backDefault: json['back_default'],
      backGray: json['back_gray'],
      backTransparent: json['back_transparent'],
      frontDefault: json['front_default'],
      frontGray: json['front_gray'],
      frontTransparent: json['front_transparent'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'back_default': backDefault,
      'back_gray': backGray,
      'back_transparent': backTransparent,
      'front_default': frontDefault,
      'front_gray': frontGray,
      'front_transparent': frontTransparent,
    };
  }
}

class GenerationII {
  final Crystal crystal;
  final Gold gold;
  final Silver silver;

  GenerationII(
      {required this.crystal, required this.gold, required this.silver});

  factory GenerationII.fromJson(Map<String, dynamic> json) {
    return GenerationII(
      crystal: Crystal.fromJson(json['crystal']),
      gold: Gold.fromJson(json['gold']),
      silver: Silver.fromJson(json['silver']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'crystal': crystal.toJson(),
      'gold': gold.toJson(),
      'silver': silver.toJson(),
    };
  }
}

class Crystal {
  final String backDefault;
  final String backShiny;
  final String backShinyTransparent;
  final String backTransparent;
  final String frontDefault;
  final String frontShiny;
  final String frontShinyTransparent;
  final String frontTransparent;

  Crystal({
    required this.backDefault,
    required this.backShiny,
    required this.backShinyTransparent,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontShiny,
    required this.frontShinyTransparent,
    required this.frontTransparent,
  });

  factory Crystal.fromJson(Map<String, dynamic> json) {
    return Crystal(
      backDefault: json['back_default'],
      backShiny: json['back_shiny'],
      backShinyTransparent: json['back_shiny_transparent'],
      backTransparent: json['back_transparent'],
      frontDefault: json['front_default'],
      frontShiny: json['front_shiny'],
      frontShinyTransparent: json['front_shiny_transparent'],
      frontTransparent: json['front_transparent'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'back_default': backDefault,
      'back_shiny': backShiny,
      'back_shiny_transparent': backShinyTransparent,
      'back_transparent': backTransparent,
      'front_default': frontDefault,
      'front_shiny': frontShiny,
      'front_shiny_transparent': frontShinyTransparent,
      'front_transparent': frontTransparent,
    };
  }
}

class Gold {
  final String backDefault;
  final String backShiny;
  final String frontDefault;
  final String frontShiny;
  final String frontTransparent;

  Gold({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
    required this.frontTransparent,
  });

  factory Gold.fromJson(Map<String, dynamic> json) {
    return Gold(
      backDefault: json['back_default'],
      backShiny: json['back_shiny'],
      frontDefault: json['front_default'],
      frontShiny: json['front_shiny'],
      frontTransparent: json['front_transparent'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'back_default': backDefault,
      'back_shiny': backShiny,
      'front_default': frontDefault,
      'front_shiny': frontShiny,
      'front_transparent': frontTransparent,
    };
  }
}

class Silver {
  final String backDefault;
  final String backShiny;
  final String frontDefault;
  final String frontShiny;
  final String frontTransparent;

  Silver({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
    required this.frontTransparent,
  });

  factory Silver.fromJson(Map<String, dynamic> json) {
    return Silver(
      backDefault: json['back_default'],
      backShiny: json['back_shiny'],
      frontDefault: json['front_default'],
      frontShiny: json['front_shiny'],
      frontTransparent: json['front_transparent'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'back_default': backDefault,
      'back_shiny': backShiny,
      'front_default': frontDefault,
      'front_shiny': frontShiny,
      'front_transparent': frontTransparent,
    };
  }
}

class GenerationIII {
  final Emerald emerald;
  final FireredLeafgreen fireredLeafgreen;
  final RubbySapphire rubySapphire;

  GenerationIII(
      {required this.emerald,
      required this.fireredLeafgreen,
      required this.rubySapphire});

  factory GenerationIII.fromJson(Map<String, dynamic> json) {
    return GenerationIII(
      emerald: Emerald.fromJson(json['emerald']),
      fireredLeafgreen: FireredLeafgreen.fromJson(json['firered-leafgreen']),
      rubySapphire: RubbySapphire.fromJson(json['ruby-sapphire']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'emerald': emerald.toJson(),
      'firered-leafgreen': fireredLeafgreen.toJson(),
      'ruby-sapphire': rubySapphire.toJson(),
    };
  }
}

class Emerald {
  final String frontDefault;
  final String frontShiny;

  Emerald({required this.frontDefault, required this.frontShiny});

  factory Emerald.fromJson(Map<String, dynamic> json) {
    return Emerald(
      frontDefault: json['front_default'],
      frontShiny: json['front_shiny'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'front_default': frontDefault,
      'front_shiny': frontShiny,
    };
  }
}

class FireredLeafgreen {
  final String backDefault;
  final String backShiny;
  final String frontDefault;
  final String frontShiny;

  FireredLeafgreen({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
  });

  factory FireredLeafgreen.fromJson(Map<String, dynamic> json) {
    return FireredLeafgreen(
      backDefault: json['back_default'],
      backShiny: json['back_shiny'],
      frontDefault: json['front_default'],
      frontShiny: json['front_shiny'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'back_default': backDefault,
      'back_shiny': backShiny,
      'front_default': frontDefault,
      'front_shiny': frontShiny,
    };
  }
}

class RubbySapphire {
  final String backDefault;
  final String backShiny;
  final String frontDefault;
  final String frontShiny;

  RubbySapphire({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
  });

  factory RubbySapphire.fromJson(Map<String, dynamic> json) {
    return RubbySapphire(
      backDefault: json['back_default'],
      backShiny: json['back_shiny'],
      frontDefault: json['front_default'],
      frontShiny: json['front_shiny'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'back_default': backDefault,
      'back_shiny': backShiny,
      'front_default': frontDefault,
      'front_shiny': frontShiny,
    };
  }
}

class GenerationIV {
  final DiamondPearl diamondPearl;
  final HeartgoldSoulsilver heartgoldSoulsilver;
  final Platinum platinum;

  GenerationIV(
      {required this.diamondPearl,
      required this.heartgoldSoulsilver,
      required this.platinum});

  factory GenerationIV.fromJson(Map<String, dynamic> json) {
    return GenerationIV(
      diamondPearl: DiamondPearl.fromJson(json['diamond-pearl']),
      heartgoldSoulsilver:
          HeartgoldSoulsilver.fromJson(json['heartgold-soulsilver']),
      platinum: Platinum.fromJson(json['platinum']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'diamond-pearl': diamondPearl.toJson(),
      'heartgold-soulsilver': heartgoldSoulsilver.toJson(),
      'platinum': platinum.toJson(),
    };
  }
}

class DiamondPearl {
  final String backDefault;
  final String backFemale;
  final String backShiny;
  final String backShinyFemale;
  final String frontDefault;
  final String frontFemale;
  final String frontShiny;
  final String frontShinyFemale;

  DiamondPearl({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory DiamondPearl.fromJson(Map<String, dynamic> json) {
    return DiamondPearl(
        backDefault: json['back_default'],
        backFemale: json['back_female'],
        backShiny: json['back_shiny'],
        backShinyFemale: json['back_shiny_female'],
        frontDefault: json['front_default'],
        frontFemale: json['front_female'],
        frontShiny: json['front_shiny'],
        frontShinyFemale: json['front_shiny_female']);
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

class HeartgoldSoulsilver {
  final String backDefault;
  final String backFemale;
  final String backShiny;
  final String backShinyFemale;
  final String frontDefault;
  final String frontFemale;
  final String frontShiny;
  final String frontShinyFemale;

  HeartgoldSoulsilver({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory HeartgoldSoulsilver.fromJson(Map<String, dynamic> json) {
    return HeartgoldSoulsilver(
        backDefault: json['back_default'],
        backFemale: json['back_female'],
        backShiny: json['back_shiny'],
        backShinyFemale: json['back_shiny_female'],
        frontDefault: json['front_default'],
        frontFemale: json['front_female'],
        frontShiny: json['front_shiny'],
        frontShinyFemale: json['front_shiny_female']);
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

class Platinum {
  final String backDefault;
  final String backFemale;
  final String backShiny;
  final String backShinyFemale;
  final String frontDefault;
  final String frontFemale;
  final String frontShiny;
  final String frontShinyFemale;

  Platinum({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory Platinum.fromJson(Map<String, dynamic> json) {
    return Platinum(
        backDefault: json['back_default'],
        backFemale: json['back_female'],
        backShiny: json['back_shiny'],
        backShinyFemale: json['back_shiny_female'],
        frontDefault: json['front_default'],
        frontFemale: json['front_female'],
        frontShiny: json['front_shiny'],
        frontShinyFemale: json['front_shiny_female']);
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

class GenerationV {
  final BlackWhite blackWhite;

  GenerationV({required this.blackWhite});

  factory GenerationV.fromJson(Map<String, dynamic> json) {
    return GenerationV(blackWhite: BlackWhite.fromJson(json['black-white']));
  }

  Map<String, dynamic> toJson() {
    return {'black-white': blackWhite};
  }
}

class BlackWhite {
  final Animated animated;

  BlackWhite({required this.animated});

  factory BlackWhite.fromJson(Map<String, dynamic> json) {
    return BlackWhite(animated: Animated.fromJson(json['animated']));
  }

  Map<String, dynamic> toJson() {
    return {'animated': animated};
  }
}

class Animated {
  final String backDefault;
  final String backFemale;
  final String backShiny;
  final String backShinyFemale;
  final String frontDefault;
  final String frontFemale;
  final String frontShiny;
  final String frontShinyFemale;

  Animated({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory Animated.fromJson(Map<String, dynamic> json) {
    return Animated(
        backDefault: json['back_default'],
        backFemale: json['back_female'],
        backShiny: json['back_shiny'],
        backShinyFemale: json['back_shiny_female'],
        frontDefault: json['front_default'],
        frontFemale: json['front_female'],
        frontShiny: json['front_shiny'],
        frontShinyFemale: json['front_shiny_female']);
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

class GenerationVI {
  final OmegarubyAlphasapphire omegarubyAlphasapphire;
  final Xy xy;

  GenerationVI({required this.omegarubyAlphasapphire, required this.xy});

  factory GenerationVI.fromJson(Map<String, dynamic> json) {
    return GenerationVI(
        omegarubyAlphasapphire:
            OmegarubyAlphasapphire.fromJson(json['omegaruby-alphasapphire']),
        xy: Xy.fromJson(json['xy']));
  }

  Map<String, dynamic> toJson() {
    return {'omegaruby-alphasapphire': omegarubyAlphasapphire, 'xy': xy};
  }
}

class OmegarubyAlphasapphire {
  final String frontDefault;
  final String frontFemale;
  final String frontShiny;
  final String frontShinyFemale;

  OmegarubyAlphasapphire(
      {required this.frontDefault,
      required this.frontFemale,
      required this.frontShiny,
      required this.frontShinyFemale});

  factory OmegarubyAlphasapphire.fromJson(Map<String, dynamic> json) {
    return OmegarubyAlphasapphire(
        frontDefault: json['front_default'],
        frontFemale: json['front_female'],
        frontShiny: json['front_shiny'],
        frontShinyFemale: json['front_shiny_female']);
  }

  Map<String, dynamic> toJson() {
    return {
      'front_default': frontDefault,
      'front_female': frontFemale,
      'front_shiny': frontShiny,
      'front_shiny_female': frontShinyFemale
    };
  }
}

class Xy {
  final String frontDefault;
  final String frontFemale;
  final String frontShiny;
  final String frontShinyFemale;

  Xy({
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory Xy.fromJson(Map<String, dynamic> json) {
    return Xy(
        frontDefault: json['front_default'],
        frontFemale: json['front_female'],
        frontShiny: json['front_shiny'],
        frontShinyFemale: json['front_shiny_female']);
  }

  Map<String, dynamic> toJson() {
    return {
      'front_default': frontDefault,
      'front_female': frontFemale,
      'front_shiny': frontShiny,
      'front_shiny_female': frontShinyFemale
    };
  }
}

class GenerationVII {
  final Icons icons;
  final UltraSunUltraMoon ultraSunUltraMoon;

  GenerationVII({required this.icons, required this.ultraSunUltraMoon});

  factory GenerationVII.fromJson(Map<String, dynamic> json) {
    return GenerationVII(
        icons: Icons.fromJson(json['icons']),
        ultraSunUltraMoon:
            UltraSunUltraMoon.fromJson(json['ultra-sun-ultra-moon']));
  }

  Map<String, dynamic> toJson() {
    return {'icons': icons, 'ultra-sun-ultra-moon': ultraSunUltraMoon};
  }
}

class Icons {
  final String frontDefault;
  final String frontFemale;

  Icons({required this.frontDefault, required this.frontFemale});

  factory Icons.fromJson(Map<String, dynamic> json) {
    return Icons(
        frontDefault: json['front_default'], frontFemale: json['front_female']);
  }

  Map<String, dynamic> toJson() {
    return {'front_default': frontDefault, 'front_female': frontFemale};
  }
}

class UltraSunUltraMoon {
  final String frontDefault;
  final String frontFemale;
  final String frontShiny;
  final String frontShinyFemale;

  UltraSunUltraMoon({
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory UltraSunUltraMoon.fromJson(Map<String, dynamic> json) {
    return UltraSunUltraMoon(
        frontDefault: json['front_default'],
        frontFemale: json['front_female'],
        frontShiny: json['front_shiny'],
        frontShinyFemale: json['front_shiny_female']);
  }

  Map<String, dynamic> toJson() {
    return {
      'front_default': frontDefault,
      'front_female': frontFemale,
      'front_shiny': frontShiny,
      'front_shiny_female': frontShinyFemale
    };
  }
}

class GenerationVIII {
  final Icons icons;

  GenerationVIII({required this.icons});

  factory GenerationVIII.fromJson(Map<String, dynamic> json) {
    return GenerationVIII(icons: Icons.fromJson(json['icons']));
  }

  Map<String, dynamic> toJson() {
    return {'icons': icons};
  }
}
