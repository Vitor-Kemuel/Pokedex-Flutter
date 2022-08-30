import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    Key? key,
    required this.stringError,
  }) : super(key: key);
  final String stringError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(stringError),
      ),
    );
  }
}
