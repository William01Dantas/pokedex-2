import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../features/presentation/data/models/pokemon_model.dart';
import '../infra/api.dart';
import '../infra/api_endpoints.dart';
import '../presenters/service/service_dio.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  HomeControllerBase() {
    init();
  }

  @observable
  TextEditingController controllerSearch = TextEditingController();

  @observable
  ObservableList<PokemonModel> listaPokemon = ObservableList<PokemonModel>();

  @observable
  ObservableList<PokemonModel> listaPokemonAux = ObservableList<PokemonModel>();

  @observable
  int quantidadeDePokemons = 0;

  @observable
  bool isLoadList = false;

  final int totalRequest = 150;

  @action
  Future<void> loadListaPokemon() async {
    for (var i = 1; i < totalRequest; i++) {
      try {
        final value = await DioServices.get('${Api.baseUrl}${ApiEndpoint.pokemon.name}/$i');
        final colorValue = await DioServices.get('${Api.baseUrl}${ApiEndpoint.pokemonSpecies.name}/${value.data['name']}');

        if (colorValue.statusCode == 200) {
          final pokemon = PokemonModel(
            id: value.data['id'],
            name: value.data['name'],
            sprite: value.data['sprites']['other']['dream_world']['front_default'],
            stats: value.data['stats'],
            types: value.data['types'],
            color: colorValue.data['color']['name'],
          );

          listaPokemon.add(pokemon);
          listaPokemonAux.add(pokemon);
          quantidadeDePokemons = listaPokemon.length;

          if (i == 20) {
            isLoadList = true;
          }
        } else {
          print('Erro ao carregar a cor do pokemon');
        }
      } catch (e) {
        print('Erro ao carregar o pokemon: $e');
      }
    }
  }

  @action
  void searchPokemon() {
    if (controllerSearch.text.isNotEmpty) {
      final filteredList = listaPokemonAux.where((element) =>
          element.name.toLowerCase().contains(controllerSearch.text.toLowerCase())).toList();
      listaPokemon.clear();
      listaPokemon.addAll(filteredList);
    } else {
      listaPokemon.clear();
      listaPokemon.addAll(listaPokemonAux);
    }
    quantidadeDePokemons = listaPokemon.length;
  }



  @action
  void init() {
    debugPrint('Init: Home controller');
    loadListaPokemon();
  }
}