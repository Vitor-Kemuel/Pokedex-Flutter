import 'package:flutter/material.dart';
import 'package:pokeflutter/Common/Model/pokemon.dart';
import 'package:pokeflutter/Common/Services/Color/color.dart';
import 'package:pokeflutter/Common/Widgets/AppBar/custom_app_bar.dart';

class PokemonInfo extends StatelessWidget {
  const PokemonInfo({
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
    return Scaffold(
      appBar: CustomAppBar(
        title: pokemon.name,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        color: getColor(),
        child: ListView(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(500, 50),
                  topRight: Radius.elliptical(500, 50),
                ),
              ),
              child: Column(
                children: [
                  Image.network(
                    pokemon.img!,
                    width: MediaQuery.of(context).size.width / 1.5,
                    scale: 0.5,
                  ),
                  const Divider(
                    color: Colors.white,
                    endIndent: 15,
                    indent: 15,
                    thickness: 2,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(80, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Type:',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: pokemon.type!.map((e) {
                              return Container(
                                margin: const EdgeInsets.fromLTRB(5, 3, 5, 3),
                                child: Text(
                                  e,
                                  style: const TextStyle(color: Colors.black),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      pokemon.prevEvolution != null
                          ? Column(
                              children: [
                                const Text(
                                  "Prev Evolution",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Column(
                                  children: pokemon.prevEvolution!.map((e) {
                                    return Container(
                                      margin:
                                          const EdgeInsets.fromLTRB(5, 3, 5, 3),
                                      child: Text(
                                        e.name!,
                                        style: const TextStyle(
                                            color: Colors.black),
                                      ),
                                    );
                                  }).toList(),
                                )
                              ],
                            )
                          : Container(),
                      pokemon.prevEvolution == null ||
                              pokemon.nextEvolution == null
                          ? Container()
                          : const SizedBox(
                              width: 15,
                            ),
                      pokemon.nextEvolution != null
                          ? Column(
                              children: [
                                const Text(
                                  "Next Evolution",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Column(
                                  children: pokemon.nextEvolution!.map((e) {
                                    return Container(
                                      margin:
                                          const EdgeInsets.fromLTRB(5, 3, 5, 3),
                                      child: Text(
                                        e.name!,
                                        style: const TextStyle(
                                            color: Colors.black),
                                      ),
                                    );
                                  }).toList(),
                                )
                              ],
                            )
                          : Container(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
