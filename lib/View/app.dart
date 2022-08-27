import 'package:flutter/material.dart';
import 'package:pokeflutter/View/PokemonList/pokemon_list.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PokemonList(),
      debugShowCheckedModeBanner: false,
    );
  }
}