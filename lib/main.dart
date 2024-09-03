import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/features/presentation/stores/navigation_store.dart';
import 'package:pokedex/start_app.dart';

import 'core/controllers/home_controller.dart';
import 'features/presentation/stores/pokemon_store.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<PokemonStore>(PokemonStore());
  getIt.registerSingleton<NavigationStore>(NavigationStore());
  getIt.registerSingleton<HomeController>(HomeController());
}

void main() {
  setup();
  final pokemonStore = getIt<PokemonStore>();
  pokemonStore.fetchPokemons();
  runApp(const StartApp());
}
