import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokeflutter/Common/Services/PokemonService/pokemon_repository.dart';
import 'package:pokeflutter/Common/Widgets/PageSwitchContainer/page_switch_container.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageSwitchContainer(
        pokemonRepository: PokemonRepository(
          dio: Dio(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
