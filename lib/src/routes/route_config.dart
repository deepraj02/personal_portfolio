import 'package:go_router/go_router.dart';
import 'package:personal_protfolio/src/config/keys.config.dart';
import 'package:personal_protfolio/src/features/shell/presentation/pages/portfoliomain.page.dart';

import '../features/splash/presentation/pages/thesplash.page.dart';
import '../features/welcome/presentation/pages/welcome.page.dart';

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
      ShellRoute(
        navigatorKey: GlobalKeysConfig.tabNav,
        builder: ((context, state, child) {
          return PortfolioMainPage(child: child);
        }),
        routes: [
          GoRoute(
            parentNavigatorKey: GlobalKeysConfig.tabNav,
            path: WelcomePage.route,
            pageBuilder: (context, state) {
              return const NoTransitionPage(
                child: WelcomePage(),
              );
            },
          ),
        ],
      ),
    ],
  );
}
