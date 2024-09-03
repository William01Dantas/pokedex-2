// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  late final _$controllerSearchAtom =
      Atom(name: 'HomeControllerBase.controllerSearch', context: context);

  @override
  TextEditingController get controllerSearch {
    _$controllerSearchAtom.reportRead();
    return super.controllerSearch;
  }

  @override
  set controllerSearch(TextEditingController value) {
    _$controllerSearchAtom.reportWrite(value, super.controllerSearch, () {
      super.controllerSearch = value;
    });
  }

  late final _$listaPokemonAtom =
      Atom(name: 'HomeControllerBase.listaPokemon', context: context);

  @override
  ObservableList<PokemonModel> get listaPokemon {
    _$listaPokemonAtom.reportRead();
    return super.listaPokemon;
  }

  @override
  set listaPokemon(ObservableList<PokemonModel> value) {
    _$listaPokemonAtom.reportWrite(value, super.listaPokemon, () {
      super.listaPokemon = value;
    });
  }

  late final _$listaPokemonAuxAtom =
      Atom(name: 'HomeControllerBase.listaPokemonAux', context: context);

  @override
  ObservableList<PokemonModel> get listaPokemonAux {
    _$listaPokemonAuxAtom.reportRead();
    return super.listaPokemonAux;
  }

  @override
  set listaPokemonAux(ObservableList<PokemonModel> value) {
    _$listaPokemonAuxAtom.reportWrite(value, super.listaPokemonAux, () {
      super.listaPokemonAux = value;
    });
  }

  late final _$quantidadeDePokemonsAtom =
      Atom(name: 'HomeControllerBase.quantidadeDePokemons', context: context);

  @override
  int get quantidadeDePokemons {
    _$quantidadeDePokemonsAtom.reportRead();
    return super.quantidadeDePokemons;
  }

  @override
  set quantidadeDePokemons(int value) {
    _$quantidadeDePokemonsAtom.reportWrite(value, super.quantidadeDePokemons,
        () {
      super.quantidadeDePokemons = value;
    });
  }

  late final _$isLoadListAtom =
      Atom(name: 'HomeControllerBase.isLoadList', context: context);

  @override
  bool get isLoadList {
    _$isLoadListAtom.reportRead();
    return super.isLoadList;
  }

  @override
  set isLoadList(bool value) {
    _$isLoadListAtom.reportWrite(value, super.isLoadList, () {
      super.isLoadList = value;
    });
  }

  late final _$loadListaPokemonAsyncAction =
      AsyncAction('HomeControllerBase.loadListaPokemon', context: context);

  @override
  Future<void> loadListaPokemon() {
    return _$loadListaPokemonAsyncAction.run(() => super.loadListaPokemon());
  }

  late final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase', context: context);

  @override
  void searchPokemon() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.searchPokemon');
    try {
      return super.searchPokemon();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void init() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.init');
    try {
      return super.init();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
controllerSearch: ${controllerSearch},
listaPokemon: ${listaPokemon},
listaPokemonAux: ${listaPokemonAux},
quantidadeDePokemons: ${quantidadeDePokemons},
isLoadList: ${isLoadList}
    ''';
  }
}
