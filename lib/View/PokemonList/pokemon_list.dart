import 'package:flutter/material.dart';
import 'package:pokeflutter/Common/Model/pokemon.dart';
import 'package:pokeflutter/Common/Widgets/AppBar/custom_app_bar.dart';
import 'package:pokeflutter/Common/Widgets/PokemonCard/pokemon_card.dart';
import 'package:pokeflutter/View/PokemonInfo/pokemon_info.dart';

class PokemonList extends StatelessWidget {
  const PokemonList({
    Key? key,
    required this.pokemonList,
  }) : super(key: key);
  final List<PokemonModel> pokemonList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Pokedex",
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(255, 109, 109, 109),
      body: ListView.builder(
        itemCount: pokemonList.length,
        itemBuilder: (BuildContext context, int index) {
          return TextButton(
            child: PokemonCard(pokemon: pokemonList[index]),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PokemonInfo(
                    pokemon: pokemonList[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
