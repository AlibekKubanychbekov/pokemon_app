import 'package:flutter/material.dart';
import 'package:pocemon_app/modules/welcome/welcome_screen.dart';

void main() {
  runApp(const PokemonApp());
}

class PokemonApp extends StatelessWidget {
  const PokemonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'ClashDisplay',
      ),
      home: const WelcomeScreen(),
    );
  }
}
