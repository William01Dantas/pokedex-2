import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:pokedex/features/presentation/screens/home_screen.dart';
import 'package:pokedex/features/presentation/stores/pokemon_store.dart';

class MockPokemonStore extends Mock implements PokemonStore {}

void main() {
  final getIt = GetIt.instance;
  getIt.registerFactory<PokemonStore>(() => MockPokemonStore());

  testWidgets('HomeScreen exists', (WidgetTester tester) async {
    // Construa a tela HomeScreen
    await tester.pumpWidget(const HomeScreen());

    // Verifique se o Scaffold existe (assumindo que HomeScreen usa um Scaffold)
    expect(find.byType(Scaffold), findsOneWidget);
  });
}
