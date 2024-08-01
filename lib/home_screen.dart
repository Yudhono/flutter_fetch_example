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
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _fetchPokemons();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _isLoading && _pokemons.isEmpty
            ? const CircularProgressIndicator()
            : buildPokemonList(),
      ),
    );
  }

  Widget buildPokemonList() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _pokemons.length + (_isLoading ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == _pokemons.length) {
          return const Center(child: CircularProgressIndicator());
        }
        final pokemon = _pokemons[index];
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
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/${pokemon.url!.split('/')[6]}.png'),
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
