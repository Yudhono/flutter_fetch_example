import 'package:flutter/material.dart';
import 'package:flutter_fetch_example/models/pokemonDetails.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_fetch_example/models/pokemon.dart';

class DetailsScreen extends StatefulWidget {
  final Pokemon pokemon;
  const DetailsScreen(this.pokemon, {super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late Future<PokemonDetails2> _pokemonDetails;

  @override
  void initState() {
    super.initState();
    _pokemonDetails = getPokemonDetails();
  }

  Future<PokemonDetails2> getPokemonDetails() async {
    var url =
        Uri.parse('https://pokeapi.co/api/v2/pokemon/${widget.pokemon.name}');
    final response =
        await http.get(url, headers: {"Content-Type": "application/json"});

    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      return PokemonDetails2.fromJson(body);
    } else {
      throw Exception('Failed to load Pokemon details');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pokemon.name ?? 'No Name'),
      ),
      body: FutureBuilder<PokemonDetails2>(
        future: _pokemonDetails,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final details = snapshot.data!;
            return buildPokemonDetails(details);
          } else {
            return const Center(child: Text('No data'));
          }
        },
      ),
    );
  }

  Widget buildPokemonDetails(PokemonDetails2 details) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/${widget.pokemon.url!.split('/')[6]}.png')),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Abilities:',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Wrap(
                  spacing: 8.0,
                  direction: Axis.horizontal,
                  children: details.abilities.map((ability) {
                    return Chip(
                      padding: const EdgeInsets.all(2.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      label: Text(ability.ability.name),
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Types:',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Wrap(
                  spacing: 8.0,
                  direction: Axis.horizontal,
                  children: details.types.map((type) {
                    return Chip(
                      padding: const EdgeInsets.all(2.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      label: Text(type.type.name),
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Stats:',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              Column(
                children: details.stats.map((stat) {
                  return Row(
                    children: [
                      SizedBox(
                        width: 120.0,
                        child: Text(
                          stat.stat.name,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: LinearProgressIndicator(
                          value: stat.baseStat / 100,
                          backgroundColor: Colors.grey[300],
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Text(
                        stat.baseStat.toString(),
                        style: const TextStyle(fontSize: 16.0),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
