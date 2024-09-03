import 'package:pokedex/core/infra/api.dart';
import 'package:pokedex/core/infra/api_endpoints.dart';

import '../../../../core/presenters/service/service_dio.dart';
import '../models/pokemon_model.dart';

class PokemonRepository {
  Future<List<PokemonModel>> fetchPokemons() async {
    final response = await DioServices.get(Api.getUrl(ApiEndpoint.pokemon));
    if (response.statusCode == 200) {
      final data = response.data['results'] as List;
      return data.map((pokemon) => PokemonModel.fromJson(pokemon)).toList();
    } else {
      throw Exception('Failed to load pokemons');
    }
  }
}
