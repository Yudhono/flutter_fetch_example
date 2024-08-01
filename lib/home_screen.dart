import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_fetch_example/details_screen.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_fetch_example/models/pokemon.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  static const int _limit = 20;
  int _offset = 0;
  bool _isLoading = false;
  List<Pokemon> _pokemons = [];
  List<Pokemon> _filteredPokemons = [];
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _fetchPokemons();
    _scrollController.addListener(_scrollListener);
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        !_isLoading) {
      _fetchPokemons();
    }
  }

  Future<void> _fetchPokemons() async {
    setState(() {
      _isLoading = true;
    });
    try {
      final newPokemons = await getPokemons(_offset, _limit);
      setState(() {
        _offset += _limit;
        _pokemons.addAll(newPokemons);
        _filteredPokemons = _pokemons;
      });
    } catch (e) {
      // Handle error
      print(e);
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  static Future<List<Pokemon>> getPokemons(int offset, int limit) async {
    var url = Uri.parse(
        'https://pokeapi.co/api/v2/pokemon?offset=$offset&limit=$limit');
    final response =
        await http.get(url, headers: {"Content-Type": "application/json"});

    if (response.statusCode == 200) {
      final Map<String, dynamic> body = json.decode(response.body);
      final List<dynamic> results = body['results'];
      return results.map((dynamic item) => Pokemon.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load Pokemons');
    }
  }

  void _onSearchChanged() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredPokemons = _pokemons
          .where((pokemon) => pokemon.name.toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokémon List'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search Pokémon',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: _isLoading && _pokemons.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : buildPokemonList(),
          ),
        ],
      ),
    );
  }

  Widget buildPokemonList() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _filteredPokemons.length + (_isLoading ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == _filteredPokemons.length) {
          return const Center(child: CircularProgressIndicator());
        }
        final pokemon = _filteredPokemons[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => DetailsScreen(pokemon),
              ),
            );
          },
          child: Container(
            color: Colors.grey.shade300,
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            height: 100,
            width: double.maxFinite,
            child: Row(
              children: [
                Image(
                  image: NetworkImage(
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/${pokemon.url.split('/')[6]}.png'),
                ),
                Expanded(child: Text('${pokemon.name}')),
              ],
            ),
          ),
        );
      },
    );
  }
}
