import 'package:pokeflutter/Common/Model/evolution.dart';

class PokemonModel {
  int? id;
  String? num;
  String? name;
  String? img;
  List<String>? type;
  String? height;
  String? weight;
  List<Evolution>? prevEvolution;
  List<Evolution>? nextEvolution;

  PokemonModel({
    this.id,
    this.num,
    this.name,
    this.img,
    this.type,
    this.height,
    this.weight,
    this.prevEvolution,
    this.nextEvolution,
  });

  PokemonModel.fromMap(Map<String, dynamic> pokemon) {
    id = pokemon['id'];
    num = pokemon['num'];
    name = pokemon['name'];
    img = pokemon['img'];
    type = pokemon['type'].cast<String>();
    height = pokemon['height'];
    weight = pokemon['weight'];
    if (pokemon['prev_evolution'] != null) {
      prevEvolution = <Evolution>[];
      pokemon['prev_evolution'].forEach((v) {
        prevEvolution!.add(Evolution.fromMap(v));
      });
    }
    if (pokemon['next_evolution'] != null) {
      nextEvolution = <Evolution>[];
      pokemon['next_evolution'].forEach((v) {
        nextEvolution!.add(Evolution.fromMap(v));
      });
    }
  }
}
