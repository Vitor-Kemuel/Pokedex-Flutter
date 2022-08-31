import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:pokeflutter/Common/Consts/api_consts.dart';
import 'package:pokeflutter/Common/Error/api_error.dart';
import 'package:pokeflutter/Common/Model/pokemon.dart';
import 'package:pokeflutter/Common/Services/PokemonService/ipokemon_repository.dart';

class PokemonRepository implements IPokemonRepository {
  final Dio dio;
  PokemonRepository({
    required this.dio,
  });

  @override
  Future<List<PokemonModel>> getAllPokemonsAPI() async {
    try {
      final response = await dio.get(PokeApiConsts.allPokemonsURL);
      final responseDecode = jsonDecode(response.data) as Map<String, dynamic>;
      final pokemonList =
          responseDecode['pokemon'] as List<dynamic>;
      return pokemonList
          .map((pokemon) => PokemonModel.fromMap(pokemon))
          .toList();
    } catch (e) {
      throw ApiError(message: "Erro ao carregar dados");
    }
  }
}
