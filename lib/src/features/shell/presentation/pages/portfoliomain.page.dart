import 'package:flutter/material.dart';

import '../../../../config/colors_config.dart';
import '../../../../config/keys.config.dart';
import '../../../../shared/widgets/pagecolor.dart';
import '../../../navigation/presentation/widgets/left_navigation.dart';

class PortfolioMainPage extends StatelessWidget {
  static const String route = '/main';
  final Widget? child;
  const PortfolioMainPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: GlobalKeysConfig.mainScaffold,
        backgroundColor: TheColors.mainBlue,
        body: Stack(
          children: [
            const PageColor(), // <-- add the PageColor here, at the bottom of the Stack
            Center(child: child),
            const Align(
              alignment: Alignment.centerLeft,
              child: LeftNavigation(),
            ),
          ],
        ));
  }
}
