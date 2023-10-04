import 'package:flutter/material.dart';
import 'router/route.dart';
import 'themes/theme.dart';

class MedicApplication extends StatelessWidget {
  const MedicApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: light_theme,
      routes: route,
    );
  }
}
