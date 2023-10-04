import 'package:flutter/material.dart';

class MedicLogoPictureShape extends StatelessWidget {
  const MedicLogoPictureShape({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      child: Image.asset("assets/images/square_medic_plus.png",
          fit: BoxFit.contain,
          width: MediaQuery.of(context).size.width / 2,
          color: const Color.fromRGBO(255, 255, 255, 0.4),
          colorBlendMode: BlendMode.modulate),
    );
  }
}
