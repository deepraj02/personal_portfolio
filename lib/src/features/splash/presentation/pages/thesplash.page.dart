import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_protfolio/src/config/keys.config.dart';
import 'package:personal_protfolio/src/features/splash/presentation/widgets/loading.widget.dart';
import 'package:personal_protfolio/src/features/welcome/presentation/pages/welcome.page.dart';

import '../../../../config/colors_config.dart';

class Splash extends StatelessWidget {
  static const String route = '/splash';

  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(GlobalKeysConfig.mainNav.currentContext!).go(
        WelcomePage.route,
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
