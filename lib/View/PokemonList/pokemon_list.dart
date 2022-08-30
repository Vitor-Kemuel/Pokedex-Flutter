import 'package:flutter/material.dart';
import 'package:pokeflutter/Common/Model/pokemon.dart';

class PokemonList extends StatelessWidget {
  const PokemonList({Key? key, required this.pokemonList}) : super(key: key);
  final List<PokemonModel> pokemonList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: ListView.builder(
        itemCount: pokemonList.length,
        itemBuilder: (BuildContext context, int index){
          return Text(pokemonList[index].name!);
        },
      ),
    );
  }
}
