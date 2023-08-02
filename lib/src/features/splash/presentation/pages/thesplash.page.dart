import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_protfolio/src/config/keys.config.dart';
import 'package:personal_protfolio/src/features/splash/presentation/widgets/loading.widget.dart';

import '../../../../config/colors_config.dart';
import '../../../shell/presentation/pages/portfoliomain.page.dart';

class Splash extends StatelessWidget {
  static const String route = '/splash';

  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(GlobalKeysConfig.mainNav.currentContext!).go(
        PortfolioMainPage.route,
      );
    });
    return const Scaffold(
      backgroundColor: TheColors.mainBlue,
      body: SplashLoading(
        message: "Portfolio Loading!!",
      ),
    );
  }
}
