class PokemonModel {
  int? id;
  String? num;
  String? name;
  String? img;
  List<String>? type;
  String? height;
  String? weight;
  List<PrevEvolution>? prevEvolution;
  List<NextEvolution>? nextEvolution;

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
      prevEvolution = <PrevEvolution>[];
      pokemon['prev_evolution'].forEach((v) {
        prevEvolution!.add(new PrevEvolution.fromMap(v));
      });
    }
    if (pokemon['next_evolution'] != null) {
      nextEvolution = <NextEvolution>[];
      pokemon['next_evolution'].forEach((v) {
        nextEvolution!.add(new NextEvolution.fromMap(v));
      });
    }
  }
}

class PrevEvolution {
  String? num;
  String? name;

  PrevEvolution({this.num, this.name});

  PrevEvolution.fromMap(Map<String, dynamic> evolution) {
    num = evolution['num'];
    name = evolution['name'];
  }
}

class NextEvolution {
  String? num;
  String? name;

  NextEvolution({this.num, this.name});

  NextEvolution.fromMap(Map<String, dynamic> evolution) {
    num = evolution['num'];
    name = evolution['name'];
  }
}
