import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_fetch_example/pokemon.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  static Future<List<Pokemon>> getPokemons() async {
    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon');
    final response =
        await http.get(url, headers: {"Content-Type": "application/json"});

    if (response.statusCode == 200) {
      // Parse the JSON response as a map
      final Map<String, dynamic> body = json.decode(response.body);

      // Extract the 'results' list from the response
      final List<dynamic> results = body['results'];

      // Map the results to a list of Pokemon objects
      return results.map((dynamic item) => Pokemon.fromJson(item)).toList();
    } else {
      // Handle error response
      throw Exception('Failed to load Pokemons');
    }
  }

  late Future<List<Pokemon>> pokemonsFuture;

  @override
  void initState() {
    super.initState();
    pokemonsFuture = getPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<List<Pokemon>>(
          future: pokemonsFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text("Error: ${snapshot.error}");
            } else if (snapshot.hasData) {
              final pokemons = snapshot.data!;
              return buildPokemonList(pokemons);
            } else {
              return const Text("No data available");
            }
          },
        ),
      ),
    );
  }

  Widget buildPokemonList(List<Pokemon> pokemons) {
    return ListView.builder(
      itemCount: pokemons.length,
      itemBuilder: (context, index) {
        final pokemon = pokemons[index];
        return Container(
          color: Colors.grey.shade300,
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          height: 100,
          width: double.maxFinite,
          child: Row(
            children: [
              Image(
                  image: NetworkImage(
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/${pokemon.url!.split('/')[6]}.png')),
              Expanded(child: Text('${pokemon.name}')),
            ],
          ),
        );
      },
    );
  }
}
