import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:lottie/lottie.dart';
import 'package:pokedex/core/presenters/theme/size_outlet.dart';

import '../../../core/controllers/home_controller.dart';
import '../widgets/card_pokemon_widget.dart';
import '../widgets/header_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeController = GetIt.instance<HomeController>();

  // Método para construir o indicador de carregamento
  Widget _buildLoadingIndicator() {
    return Center(
      child: Lottie.asset(
        'assets/lottie/pokeball_loading.json',
        width: SizeOutlet.imageSizeLarge,
        height: SizeOutlet.imageSizeLarge,
      ),
    );
  }

  // Método para construir o estado vazio
  Widget _buildEmptyState() {
    return const Center(
      child: Text(
        'No Pokemons Found',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  // Método para construir a lista de pokémons
  Widget _buildPokemonList() {
    return ListView.builder(
      itemCount: homeController.listaPokemon.length,
      itemBuilder: (context, index) {
        final pokemon = homeController.listaPokemon[index];
        return CardPokemon(pokemon: pokemon);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header com barra de pesquisa
            Header(
              controllerSearch: homeController.controllerSearch,
              title: 'Pokedex',
              onChanged: (_) => homeController.searchPokemon(),
            ),
            Expanded(
              child: Observer(
                builder: (_) {
                  // Verifica se a lista está carregando
                  if (!homeController.isLoadList) {
                    return _buildLoadingIndicator();
                  }

                  // Verifica se a lista está vazia após a pesquisa
                  if (homeController.listaPokemon.isEmpty) {
                    return _buildEmptyState();
                  }

                  // Constrói a lista de pokémons
                  return _buildPokemonList();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
