import 'package:mobx/mobx.dart';

import 'package:flutter/material.dart';
import 'package:pokedex/features/presentation/data/models/pokemon_model.dart';

part 'pokedex_controller.g.dart';

class PokedexController = PokedexControllerBase with _$PokedexController;

abstract class PokedexControllerBase with Store {
  @observable
  PageController pageControllerPokedex = PageController(initialPage: 1);

  @observable
  int basePageIndexPokedex = 1;

  @action
  void setBasePageIndex(int index) {
    basePageIndexPokedex = index;
  }

  @action
  void nextPage() {
    pageControllerPokedex.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  @action
  void previousPage() {
    pageControllerPokedex.previousPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  @computed
  PokemonModel get pokemon => _pokemon;

  PokemonModel _pokemon = PokemonModel(
    id: 1,
    name: 'bulbasaur',
    sprite: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/1.svg',
    color: 'green',
    stats: [
      {
        'base_stat': 45,
        'effort': 0,
        'stat': {'name': 'hp', 'url': 'https://pokeapi.co/api/v2/stat/1/'}
      },
      {
        'base_stat': 49,
        'effort': 0,
        'stat': {'name': 'attack', 'url': 'https://pokeapi.co/api/v2/stat/2/'}
      },
      {
        'base_stat': 49,
        'effort': 0,
        'stat': {'name': 'defense', 'url': 'https://pokeapi.co/api/v2/stat/3/'}
      },
      {
        'base_stat': 65,
        'effort': 1,
        'stat': {'name': 'special-attack', 'url': 'https://pokeapi.co/api/v2/stat/4/'}
      },
      {
        'base_stat': 65,
        'effort': 0,
        'stat': {'name': 'special-defense', 'url': 'https://pokeapi.co/api/v2/stat/5/'}
      },
      {
        'base_stat': 45,
        'effort': 0,
        'stat': {'name': 'speed', 'url': 'https://pokeapi.co/api/v2/stat/6/'}
      }
    ],
    types: [
      {
        'slot': 1,
        'type': {'name': 'grass', 'url': 'https://pokeapi.co/api/v2/type/12/'}
      },
      {
        'slot': 2,
        'type': {'name': 'poison', 'url': 'https://pokeapi.co/api/v2/type/4/'}
      }
    ],
  );

  @action
  void setPokemon(PokemonModel newPokemon) {
    _pokemon = newPokemon;
  }
}
