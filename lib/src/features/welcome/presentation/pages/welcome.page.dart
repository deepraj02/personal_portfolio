import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  static const String route = "/welcome";
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Welcome Page!'),
    );
  }
}
