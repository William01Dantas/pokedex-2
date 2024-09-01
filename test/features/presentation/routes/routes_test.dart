import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/features/presentation/routes/routes.dart';
import 'package:pokedex/features/presentation/screens/details_screen.dart';
import 'package:pokedex/features/presentation/screens/home_screen.dart';
import 'package:pokedex/features/presentation/screens/splash_screen.dart';

void main() {
  group('AppRotas', () {
    testWidgets('deve retornar SplashScreen para rota "/"',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        onGenerateRoute: AppRotas.generateRoute,
        initialRoute: AppRotas.splashScreen,
      ));

      expect(find.byType(SplashScreen), findsOneWidget);
    });

    testWidgets('deve retornar HomeScreen para rota "/homeScreen"',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        onGenerateRoute: AppRotas.generateRoute,
        initialRoute: AppRotas.homeScreen,
      ));

      expect(find.byType(HomeScreen), findsOneWidget);
    });

    testWidgets('deve retornar DetailsScreen para rota "/detailsScreen"',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        onGenerateRoute: AppRotas.generateRoute,
        initialRoute: AppRotas.detailsScreen,
      ));

      expect(find.byType(DetailsScreen), findsOneWidget);
    });

    testWidgets('deve retornar uma página de erro para uma rota desconhecida',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        onGenerateRoute: AppRotas.generateRoute,
        initialRoute: '/rotaDesconhecida',
      ));

      expect(find.text('Rota não encontrada'), findsOneWidget);
    });
  });
}
