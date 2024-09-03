import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/core/controllers/home_controller.dart';
import 'package:pokedex/features/presentation/stores/pokemon_store.dart';
import 'package:lottie/lottie.dart';
import 'package:pokedex/features/presentation/widgets/header_widget.dart';

import '../../../core/presenters/theme/size_outlet.dart';
import '../widgets/card_pokemon_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final pokemonStore = GetIt.instance<PokemonStore>();
  final homeController = GetIt.instance<HomeController>();

  @override
  void initState() {
    super.initState();
    pokemonStore.fetchPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Observer(
          builder: (_) {
            return Column(
              children: [
                Header(
                  controllerSearch: homeController.controllerSearch,
                  title: 'Pokedex',
                  onChanged: (_) => homeController.searchPokemon(),
                ),
                Expanded(
                  child: Observer(builder: (context) {
                    if (homeController.isLoadList == false) {
                      return Center(
                        child: Lottie.asset(
                          'assets/lottie/pokeball_loading.json',
                          width: SizeOutlet.imageSizeLarge,
                          height: SizeOutlet.imageSizeLarge,
                        ),
                      );
                    }
                    if (homeController.listaPokemon.isEmpty) {
                      return Center(child: Text('Error: ${pokemonStore.error}'));
                    }
                    if (homeController.listaPokemon.isEmpty) {
                      return const Center(child: Text('No Pokemons Found'));
                    }
                    return ListView.builder(
                      itemCount: homeController.listaPokemon.length,
                      itemBuilder: (context, index) {
                        final pokemon = homeController.listaPokemon[index];
                        return CardPokemon(pokemon: pokemon);
                      },
                    );
                  }),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}
