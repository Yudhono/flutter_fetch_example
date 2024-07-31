import 'package:flutter_fetch_example/models/pokemon_abilities.dart';
import 'package:flutter_fetch_example/models/pokemon_cries.dart';
import 'package:flutter_fetch_example/models/pokemon_forms.dart';
import 'package:flutter_fetch_example/models/pokemon_game_indices.dart';
import 'package:flutter_fetch_example/models/pokemon_held_items.dart';
import 'package:flutter_fetch_example/models/pokemon_moves.dart';
import 'package:flutter_fetch_example/models/pokemon_species.dart';
import 'package:flutter_fetch_example/models/pokemon_stats.dart';
import 'package:flutter_fetch_example/models/pokemon_types.dart';
import 'package:flutter_fetch_example/models/pokemon_sprites.dart';

class PokemonDetails {
  final List<PokemonAbilities> abilities;
  final int? baseExperience;
  final PokemonCries? cries;
  final List<PokemonForms> form;
  final List<PokemonGameIndices> gameIndices;
  final int? height;
  final List<PokemonHeldItems> heldItems;
  final int? id;
  final bool? isDefault;
  final String locationAreaEncounters;
  final List<PokemonMoves> moves;
  final String name;
  final int? order;
  final List<dynamic> pastAbilities;
  final List<dynamic> pastTypes;
  final PokemonSpecies? species;
  final PokemonSprites? sprites;
  final List<PokemonStats> stats;
  final List<PokemonTypes> types;
  final int? weight;

  PokemonDetails({
    required this.abilities,
    required this.baseExperience,
    required this.cries,
    required this.form,
    required this.gameIndices,
    required this.height,
    required this.heldItems,
    required this.id,
    required this.isDefault,
    required this.locationAreaEncounters,
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

  factory PokemonDetails.fromJson(Map<String, dynamic> json) {
    return PokemonDetails(
      abilities: (json['abilities'] as List?)
              ?.map((item) => PokemonAbilities.fromJson(item))
              .toList() ??
          [],
      baseExperience: json['base_experience'] ?? 0,
      cries:
          json['cries'] != null ? PokemonCries.fromJson(json['cries']) : null,
      form: (json['forms'] as List?)
              ?.map((item) => PokemonForms.fromJson(item))
              .toList() ??
          [],
      gameIndices: (json['game_indices'] as List?)
              ?.map((item) => PokemonGameIndices.fromJson(item))
              .toList() ??
          [],
      height: json['height'] ?? 0,
      heldItems: (json['held_items'] as List?)
              ?.map((item) => PokemonHeldItems.fromJson(item))
              .toList() ??
          [],
      id: json['id'] ?? 0,
      isDefault: json['is_default'] ?? false,
      locationAreaEncounters: json['location_area_encounters'] ?? '',
      moves: (json['moves'] as List?)
              ?.map((item) => PokemonMoves.fromJson(item))
              .toList() ??
          [],
      name: json['name'] ?? '',
      order: json['order'] ?? 0,
      pastAbilities:
          (json['past_abilities'] as List?)?.map((item) => item).toList() ?? [],
      pastTypes:
          (json['past_types'] as List?)?.map((item) => item).toList() ?? [],
      species: json['species'] != null
          ? PokemonSpecies.fromJson(json['species'])
          : null,
      sprites: json['sprites'] != null
          ? PokemonSprites.fromJson(json['sprites'])
          : null,
      stats: (json['stats'] as List?)
              ?.map((item) => PokemonStats.fromJson(item))
              .toList() ??
          [],
      types: (json['types'] as List?)
              ?.map((item) => PokemonTypes.fromJson(item))
              .toList() ??
          [],
      weight: json['weight'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['abilities'] = abilities.map((v) => v.toJson()).toList();
    data['base_experience'] = baseExperience;
    if (cries != null) {
      data['cries'] = cries!.toJson();
    }
    data['forms'] = form.map((v) => v.toJson()).toList();
    data['game_indices'] = gameIndices.map((v) => v.toJson()).toList();
    data['height'] = height;
    data['held_items'] = heldItems.map((v) => v.toJson()).toList();
    data['id'] = id;
    data['is_default'] = isDefault;
    data['location_area_encounters'] = locationAreaEncounters;
    data['moves'] = moves.map((v) => v.toJson()).toList();
    data['name'] = name;
    data['order'] = order;
    data['past_abilities'] = pastAbilities.map((v) => v).toList();
    data['past_types'] = pastTypes.map((v) => v).toList();
    if (species != null) {
      data['species'] = species!.toJson();
    }
    if (sprites != null) {
      data['sprites'] = sprites!.toJson();
    }
    data['stats'] = stats.map((v) => v.toJson()).toList();
    data['types'] = types.map((v) => v.toJson()).toList();
    data['weight'] = weight;
    return data;
  }
}
