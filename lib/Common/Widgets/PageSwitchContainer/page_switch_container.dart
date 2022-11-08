import 'package:flutter/widgets.dart';
import 'package:pokeflutter/Common/Error/api_error.dart';
import 'package:pokeflutter/Common/Model/pokemon.dart';
import 'package:pokeflutter/Common/Services/PokemonService/ipokemon_repository.dart';
import 'package:pokeflutter/View/ErrorPage/error_page.dart';
import 'package:pokeflutter/View/LoadingPage/loading_page.dart';
import 'package:pokeflutter/View/PokemonList/pokemon_list.dart';

class PageSwitchContainer extends StatelessWidget {
  const PageSwitchContainer({
    Key? key,
    required this.pokemonRepository,
  }) : super(key: key);
  final IPokemonRepository pokemonRepository;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: pokemonRepository.getAllPokemonsAPI(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingPage();
        }

        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return PokemonList(pokemonList: snapshot.data!);
        }

        if (snapshot.hasError) {
          return ErrorPage(
            stringError: (snapshot.error as ApiError).message!,
          );
        }

        return const Center(
          child: Text("Algo deu errado"),
        );
      },
    );
  }
}
