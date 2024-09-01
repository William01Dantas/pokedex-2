import 'package:flutter/material.dart';
import 'package:pokedex/core/presenters/theme/size_outlet.dart';
import 'package:pokedex/core/routes/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: const Duration(milliseconds: 600),
            builder: (context, double value, child) {
              return AnimatedOpacity(
                opacity: value,
                duration: const Duration(
                  milliseconds: 600,
                ),
                onEnd: () => Future.delayed(
                  const Duration(seconds: 2),
                  () {
                    if (context.mounted) {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRotas.baseBar);
                    }
                  },
                ),
                child: Transform.scale(scale: value, child: child),
              );
            },
            child: Image.asset(
              'assets/images/logo.png',
              width: SizeOutlet.imageSizeHuge,
            ),
          ),
        ),
      ),
    );
  }
}
