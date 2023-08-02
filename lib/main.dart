import 'package:flutter/material.dart';

import 'src/app.dart';

void main() {
  runApp(const Damn());
}

class Damn extends StatelessWidget {
  const Damn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Product Sans',
      ),
      home: const Portfolio(),
    );
  }
}
