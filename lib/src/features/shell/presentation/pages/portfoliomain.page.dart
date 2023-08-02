import 'package:flutter/material.dart';
import 'package:personal_protfolio/src/config/keys.config.dart';

class PortfolioMainPage extends StatelessWidget {
  static const String route = '/main';

  const PortfolioMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKeysConfig.mainScaffold,
      body: const Center(
        child: Text(
          'Main Page!',
        ),
      ),
    );
  }
}
