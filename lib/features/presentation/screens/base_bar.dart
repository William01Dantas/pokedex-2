import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/features/presentation/screens/details_screen.dart';
import 'package:pokedex/features/presentation/screens/favorites_screen.dart';
import 'package:pokedex/features/presentation/screens/home_screen.dart';
import 'package:pokedex/features/presentation/stores/navigation_store.dart';

class BaseBar extends StatelessWidget {
  const BaseBar({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationStore navigationStore = GetIt.instance<NavigationStore>();

    return Scaffold(
      body: Observer(builder: (context) {
        return IndexedStack(
          index: navigationStore.selectedIndex,
          children: [
            const HomeScreen(),
            DetailsScreen(),
            const FavoritesScreen(),
          ],
        );
      }),
      bottomNavigationBar: Observer(
        builder: (context) {
          return BottomNavigationBar(
            currentIndex: navigationStore.selectedIndex,
            onTap: (index) => navigationStore.setIndex(index),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Details',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorites',
              ),
            ],
          );
        },
      ),
    );
  }
}
