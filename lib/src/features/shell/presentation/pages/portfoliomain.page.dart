import 'package:flutter/material.dart';
import 'package:personal_protfolio/src/config/keys.config.dart';

class PortfolioMainPage extends StatelessWidget {
  static const String route = '/main';
  final Widget? child;
  const PortfolioMainPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKeysConfig.mainScaffold,
      body: child,
    );
  }
}
