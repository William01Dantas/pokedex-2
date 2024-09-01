import 'package:flutter/material.dart';
import 'package:pokedex/features/presentation/screens/details_screen.dart';
import 'package:pokedex/features/presentation/screens/home_screen.dart';
import 'package:pokedex/features/presentation/screens/splash_screen.dart';

class AppRotas {
  static const splashScreen = '/';
  static const homeScreen = '/homeScreen';
  static const detailsScreen = '/detailsScreen';

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case splashScreen:
        return MaterialPageRoute(builder: (contextSplash) => const SplashScreen());
      case homeScreen:
        return MaterialPageRoute(builder: (contextHome) => const HomeScreen());
      case detailsScreen:
        return MaterialPageRoute(builder: (contextDetail) => const DetailsScreen());
      default:
        return MaterialPageRoute(builder: (contextError) => const Scaffold(
          body: Center(
            child: Text('Rota não encontrada'),
          ),
        ));
    }
  }
}