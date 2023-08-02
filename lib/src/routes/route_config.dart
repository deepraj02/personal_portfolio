import 'package:go_router/go_router.dart';
import 'package:personal_protfolio/src/config/keys.config.dart';
import 'package:personal_protfolio/src/features/shell/presentation/pages/portfoliomain.page.dart';

import '../features/splash/presentation/pages/thesplash.page.dart';

class AppRoutes {
  static final router = GoRouter(

      ///@ [Initial Entry] Point for the App

      initialLocation: Splash.route,
      navigatorKey: GlobalKeysConfig.mainNav,
      routes: [
        GoRoute(
          parentNavigatorKey: GlobalKeysConfig.mainNav,
          path: Splash.route,
          builder: (context, state) => const Splash(),
        ),
        GoRoute(
          parentNavigatorKey: GlobalKeysConfig.mainNav,
          path: PortfolioMainPage.route,
          builder: (context, state) => const PortfolioMainPage(),
        ),
      ]);
}
