class Evolution {
  String? num;
  String? name;

  Evolution({this.num, this.name});

  Evolution.fromMap(Map<String, dynamic> evolution) {
    num = evolution['num'];
    name = evolution['name'];
  }
}
