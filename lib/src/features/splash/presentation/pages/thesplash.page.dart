import 'package:flutter/material.dart';
import 'package:personal_protfolio/src/features/splash/presentation/widgets/loading.widget.dart';

import '../../../../config/colors_config.dart';

class Splash extends StatelessWidget {
  static const String route = '/splash';

  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: TheColors.mainBlue,
      body: SplashLoading(
        message: "Portfolio Loading!!",
      ),
    );
  }
}
