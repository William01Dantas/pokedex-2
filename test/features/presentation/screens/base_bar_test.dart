import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/features/presentation/screens/base_bar.dart';
import 'package:pokedex/features/presentation/screens/details_screen.dart';
import 'package:pokedex/features/presentation/screens/favorites_screen.dart';
import 'package:pokedex/features/presentation/screens/home_screen.dart';
import 'package:pokedex/features/presentation/stores/navigation_store.dart';

void main() {
  final getIt = GetIt.instance;
  final navigationStore = NavigationStore();
  getIt.registerSingleton<NavigationStore>(navigationStore);

  testWidgets('BaseBar displays correct screens and updates navigation',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: BaseBar(),
      ),
    );

    expect(find.byType(HomeScreen), findsOneWidget);
    expect(find.byType(DetailsScreen), findsNothing);
    expect(find.byType(FavoritesScreen), findsNothing);

    navigationStore.setIndex(1);
    await tester.pump();

    expect(find.byType(HomeScreen), findsNothing);
    expect(find.byType(DetailsScreen), findsOneWidget);
    expect(find.byType(FavoritesScreen), findsNothing);

    navigationStore.setIndex(2);
    await tester.pump();

    expect(find.byType(HomeScreen), findsNothing);
    expect(find.byType(DetailsScreen), findsNothing);
    expect(find.byType(FavoritesScreen), findsOneWidget);

    expect(find.byIcon(Icons.home), findsOneWidget);
    expect(find.byIcon(Icons.book), findsOneWidget);
    expect(find.byIcon(Icons.favorite), findsOneWidget);
  });
}
