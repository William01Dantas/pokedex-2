import 'package:mobx/mobx.dart';
import 'package:pokedex/core/infra/api.dart';
import 'package:pokedex/core/infra/api_endpoints.dart';

import '../../../core/presenters/service/service_dio.dart';
import '../data/models/pokemon_model.dart';

part 'pokemon_store.g.dart';

class PokemonStore = PokemonStoreBase with _$PokemonStore;

abstract class PokemonStoreBase with Store {
  @observable
  ObservableList<PokemonModel> pokemons = ObservableList<PokemonModel>();

  @observable
  bool isLoading = false;

  @observable
  String error = '';

  @action
  Future<void> fetchPokemons() async {
    isLoading = true;
    error = '';

    try {
      final response = await DioServices.get(Api.getUrl(ApiEndpoint.pokemon));
      final data = response.data['results'] as List;

      final List<PokemonModel> loadedPokemons = [];
      for (var item in data) {
        final pokemonResponse = await DioServices.get(item['url']);
        final pokemonData = pokemonResponse.data;
        loadedPokemons.add(PokemonModel.fromJson(pokemonData));
      }

      pokemons = ObservableList.of(loadedPokemons);
    } catch (e) {
      error = e.toString();
    } finally {
      isLoading = false;
    }
  }
}
