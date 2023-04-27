import 'package:poke_app_kostanai/domain/api_clients/api_client.dart';
import 'package:poke_app_kostanai/domain/entity/pokemon_description.dart';

class Repository {
  final _apiClient = ApiClient();

  Future<PokemonDescription> getPokemonInfoByName(String name) async {
    try {
      final pokemonDescription = await _apiClient.takePokemonInfoByName(name);
      return pokemonDescription;
    } catch (e) {
      rethrow;
    }
  }

  Future<PokemonDescription> getPokemonInfoRandom() async {
    try {
      final pokemonDescription = await _apiClient.takePokemonInfoRandom();
      return pokemonDescription;
    } catch (e) {
      rethrow;
    }
  }
}
