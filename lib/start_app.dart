import 'package:flutter/material.dart';
import 'package:pokedex/core/routes/routes.dart';

class StartApp extends StatelessWidget {
  const StartApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRotas.splashScreen,
      onGenerateRoute: AppRotas.generateRoute,
    );
  }
}
