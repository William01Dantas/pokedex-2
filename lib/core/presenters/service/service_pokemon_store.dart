import 'package:get_it/get_it.dart';

import '../../../features/presentation/stores/pokemon_store.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<PokemonStore>(PokemonStore());
}
