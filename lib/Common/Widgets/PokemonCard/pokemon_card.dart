import 'package:flutter/material.dart';
import 'package:pokeflutter/Common/Model/pokemon.dart';
import 'package:pokeflutter/Common/Services/Color/color.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    Key? key,
    required this.pokemon,
  }) : super(key: key);
  final PokemonModel pokemon;

  getColor() {
    PokemonColor pokemonColor = PokemonColor();
    return pokemonColor.getColor(pokemon.type![0]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: getColor(),
      ),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: const BoxDecoration(
              color: Color.fromARGB(90, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Image.network(pokemon.img!),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color.fromARGB(216, 255, 255, 255),
                  ),
                  child: Text(
                    pokemon.name!,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: pokemon.type!.map((e) {
                      return Container(
                        margin: const EdgeInsets.fromLTRB(5, 3, 5, 3),
                        padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(80, 255, 255, 255),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Text(
                          e,
                          style: const TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 4,
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color.fromARGB(125, 255, 255, 255),
                  ),
                  child: Text(
                    pokemon.num!,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
