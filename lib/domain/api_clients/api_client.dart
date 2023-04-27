import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:poke_app_kostanai/domain/entity/pokemon.dart';
import 'package:poke_app_kostanai/domain/entity/pokemon_description.dart';

enum ApiClientExeptionType { Network, Request, Other }

class ApiClientExeption implements Exception {
  final ApiClientExeptionType type;

  ApiClientExeption(this.type);
}

class ApiClient {
  Future<Pokemon> getData(Uri uri) async {
    try {
      var response = await http.get(uri);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        final pokemon = Pokemon.fromJson(json);
        return pokemon;
      } else if (response.statusCode == 404) {
        throw ApiClientExeption(ApiClientExeptionType.Request);
      } else {
        throw ApiClientExeption(ApiClientExeptionType.Other);
      }
    } on SocketException {
      throw ApiClientExeption(ApiClientExeptionType.Network);
    } on ApiClientExeption {
      rethrow;
    } catch (_) {
      throw ApiClientExeption(ApiClientExeptionType.Other);
    }
  }

  Future<Pokemon> getPokemon(String namePokemon) async {
    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/$namePokemon');
    final pokemon = getData(url);
    return pokemon;
  }

  Future<Pokemon> getRandomPokemon() async {
    Random random = Random();
    int idOne = random.nextInt(1010) + 1;
    int idTwo = random.nextInt(271) + 10001;
    List<int> randomRangesIds = [idOne, idTwo];
    int id = randomRangesIds[random.nextInt(2)];

    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/$id');
    final pokemon = getData(url);
    return pokemon;
  }

  PokemonDescription makeDescription(Pokemon pokemon) {
    final img = pokemon.sprites.other.officialArtwork.frontDefault;
    var description = '';
    var characteristics = <String>[];
    var name = 'Название покемона - ${pokemon.name}';
    characteristics.add(name);

    String ability() {
      var abilitiesPoke = pokemon.abilities;
      List<String?> ability = abilitiesPoke.map((e) => e.ability.name).toList();
      return 'Способностями покемона являются ${ability.join(', ')}';
    }

    final abilityStr = ability();
    characteristics.add(abilityStr);
    description = characteristics.join('. ');
    return PokemonDescription(imgUrl: img, description: description);
  }

  Future<PokemonDescription> takePokemonInfoByName(String name) async {
    final pokemon = await getPokemon(name);
    final pokemonDescription = makeDescription(pokemon);
    return pokemonDescription;
  }

  Future<PokemonDescription> takePokemonInfoRandom() async {
    final pokemon = await getRandomPokemon();
    final pokemonDescription = makeDescription(pokemon);
    return pokemonDescription;
  }
}
