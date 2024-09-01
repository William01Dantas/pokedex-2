import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/features/presentation/routes/routes.dart';
import 'package:pokedex/features/presentation/screens/splash_screen.dart';

void main() {
  testWidgets(
      'SplashScreen displays logo and navigates to home screen after delay',
      (WidgetTester tester) async {
    // Cria o widget de teste
    await tester.pumpWidget(
      MaterialApp(
        home: const SplashScreen(),
        routes: {
          AppRotas.homeScreen: (context) =>
              const Scaffold(body: Text('Home Screen')),
        },
      ),
    );

    expect(find.byType(Image), findsOneWidget);

    await tester.pumpAndSettle(const Duration(milliseconds: 600));

    expect(find.byType(Image), findsOneWidget);

    await tester.pumpAndSettle(const Duration(seconds: 2));

    expect(find.text('Home Screen'), findsOneWidget);
  });
}
