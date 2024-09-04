// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PokedexController on PokedexControllerBase, Store {
  Computed<PokemonModel>? _$pokemonComputed;

  @override
  PokemonModel get pokemon =>
      (_$pokemonComputed ??= Computed<PokemonModel>(() => super.pokemon,
              name: 'PokedexControllerBase.pokemon'))
          .value;

  late final _$pageControllerPokedexAtom = Atom(
      name: 'PokedexControllerBase.pageControllerPokedex', context: context);

  @override
  PageController get pageControllerPokedex {
    _$pageControllerPokedexAtom.reportRead();
    return super.pageControllerPokedex;
  }

  @override
  set pageControllerPokedex(PageController value) {
    _$pageControllerPokedexAtom.reportWrite(value, super.pageControllerPokedex,
        () {
      super.pageControllerPokedex = value;
    });
  }

  late final _$basePageIndexPokedexAtom = Atom(
      name: 'PokedexControllerBase.basePageIndexPokedex', context: context);

  @override
  int get basePageIndexPokedex {
    _$basePageIndexPokedexAtom.reportRead();
    return super.basePageIndexPokedex;
  }

  @override
  set basePageIndexPokedex(int value) {
    _$basePageIndexPokedexAtom.reportWrite(value, super.basePageIndexPokedex,
        () {
      super.basePageIndexPokedex = value;
    });
  }

  late final _$PokedexControllerBaseActionController =
      ActionController(name: 'PokedexControllerBase', context: context);

  @override
  void setBasePageIndex(int index) {
    final _$actionInfo = _$PokedexControllerBaseActionController.startAction(
        name: 'PokedexControllerBase.setBasePageIndex');
    try {
      return super.setBasePageIndex(index);
    } finally {
      _$PokedexControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void nextPage() {
    final _$actionInfo = _$PokedexControllerBaseActionController.startAction(
        name: 'PokedexControllerBase.nextPage');
    try {
      return super.nextPage();
    } finally {
      _$PokedexControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void previousPage() {
    final _$actionInfo = _$PokedexControllerBaseActionController.startAction(
        name: 'PokedexControllerBase.previousPage');
    try {
      return super.previousPage();
    } finally {
      _$PokedexControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPokemon(PokemonModel newPokemon) {
    final _$actionInfo = _$PokedexControllerBaseActionController.startAction(
        name: 'PokedexControllerBase.setPokemon');
    try {
      return super.setPokemon(newPokemon);
    } finally {
      _$PokedexControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pageControllerPokedex: ${pageControllerPokedex},
basePageIndexPokedex: ${basePageIndexPokedex},
pokemon: ${pokemon}
    ''';
  }
}
