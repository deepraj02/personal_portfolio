import 'package:flutter/material.dart';

import 'src/app.dart';

void main() {
  runApp(const Damn());
}

class Damn extends StatelessWidget {
  const Damn({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Portfolio(),
    );
  }
}
