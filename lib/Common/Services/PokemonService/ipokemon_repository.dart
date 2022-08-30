import 'package:pokeflutter/Common/Model/pokemon.dart';

abstract class IPokemonRepository {
  Future<List<PokemonModel>> getAllPokemonsAPI();
}