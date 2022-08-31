import 'package:flutter/material.dart';

class PokemonColor {
  getColor(type) {
    switch (type) {
      case "Grass":
        return Colors.lightGreen;
      case "Fire":
        return const Color.fromARGB(255, 247, 88, 77);
      case "Water":
        return const Color.fromARGB(255, 0, 117, 172);
      case "Bug":
        return Colors.brown;
      case "Normal":
        return const Color.fromARGB(255, 212, 189, 210);
      case "Poison":
        return Colors.deepPurple;
      case "Electric":
        return Colors.amber;
      case "Ground":
        return Colors.lime;
      case "Fighting":
        return const Color.fromARGB(255, 252, 255, 103);
      case "Psychic":
        return const Color.fromARGB(52, 0, 0, 0);
      case "Ice":
        return const Color.fromARGB(255, 100, 232, 255);
      case "Rock":
        return const Color.fromARGB(255, 83, 83, 83);
      case "Dragon":
        return const Color.fromARGB(239, 255, 94, 0);
      default:
        return Colors.white;
    }
  }
}
