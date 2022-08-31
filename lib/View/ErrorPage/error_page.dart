import 'package:flutter/material.dart';
import 'package:pokeflutter/Common/Widgets/AppBar/custom_app_bar.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    Key? key,
    required this.stringError,
  }) : super(key: key);
  final String stringError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Pokedex",
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
              style: BorderStyle.solid,
              width: 2,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Text(
            stringError,
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
