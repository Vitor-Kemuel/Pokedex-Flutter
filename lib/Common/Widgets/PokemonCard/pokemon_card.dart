import 'package:flutter/material.dart';
import 'package:pokeflutter/Common/Model/pokemon.dart';

class PokemonCard extends StatelessWidget {
  final PokemonModel pokemon;
  const PokemonCard({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  getColor() {
    switch (pokemon.type![0]) {
      case "Grass":
        return Colors.lightGreen;
      case "Fire":
        return Colors.red;
      case "Water":
        return Colors.lightBlue;
      case "Bug":
        return Colors.brown;
      case "Normal":
        return Color.fromARGB(255, 212, 189, 210);
      case "Poison":
        return Colors.deepPurple;
      case "Electric":
        return Colors.amber;
      case "Ground":
        return Colors.lime;
      case "Fighting":
        return Color.fromARGB(255, 252, 255, 103);
      case "Psychic":
        return Color.fromARGB(52, 0, 0, 0);
      case "Ice":
        return Color.fromARGB(255, 100, 232, 255);
      case "Rock":
        return Color.fromARGB(255, 83, 83, 83);
      case "Dragon":
        return Color.fromARGB(239, 255, 94, 0);
      default:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: getColor(),
      ),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width/4,
            margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(
              color: Color.fromARGB(64, 255, 255, 255),
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
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color.fromARGB(186, 255, 255, 255),
                  ),
                  child: Text(
                    pokemon.name!,
                    textAlign: TextAlign.center,
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
