import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  final String routeString;

  const SkipButton(this.routeString, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          textStyle: const TextStyle(
              fontSize: 20, color: Color.fromRGBO(87, 169, 255, 1))),
      onPressed: () {
        Navigator.of(context).pushNamed(routeString);
      },
      child: const Text("Пропустить"),
    );
  }
}
