import 'package:flutter/material.dart';
import 'package:pokedex/features/presentation/screens/details_screen.dart';
import 'package:pokedex/features/presentation/screens/favorites_screen.dart';
import 'package:pokedex/features/presentation/screens/base_bar.dart';
import 'package:pokedex/features/presentation/screens/home_screen.dart';
import 'package:pokedex/features/presentation/screens/splash_screen.dart';

class AppRotas {
  static const splashScreen = '/';
  static const baseBar = '/baseBar';
  static const homeScreen = '/homeScreen';
  static const detailsScreen = '/detailsScreen';
  static const favoritesScreen = '/favoritesScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
            builder: (contextSplash) => const SplashScreen());
      case baseBar:
        return MaterialPageRoute(builder: (contextbaseBar) => const BaseBar());
      case homeScreen:
        return MaterialPageRoute(builder: (contexthome) => const HomeScreen());
      case detailsScreen:
        return MaterialPageRoute(
            builder: (contextDetail) => const DetailsScreen());
      case favoritesScreen:
        return MaterialPageRoute(
            builder: (contextFavoritesScreen) => const FavoritesScreen());
      default:
        return MaterialPageRoute(
          builder: (contextError) => const Scaffold(
            body: Center(
              child: Text('Rota não encontrada'),
            ),
          ),
        );
    }
  }
}
