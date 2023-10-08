import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          textStyle: const TextStyle(
              fontSize: 20, color: Color.fromRGBO(87, 169, 255, 1))),
      onPressed: () {Navigator.of(context).pushNamed('/registration');},
      child: const Text("Пропустить"),
      
    );
  }
}
