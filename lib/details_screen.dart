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

      print('body: ${body}');

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
            print('Error: ${snapshot.error}');
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final details = snapshot.data!;
            return Center(child: Text('Pokemon ID: ${details.id}'));
          } else {
            return const Center(child: Text('No data'));
          }
        },
      ),
    );
  }
}
