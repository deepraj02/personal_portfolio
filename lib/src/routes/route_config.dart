import 'package:go_router/go_router.dart';
import 'package:personal_protfolio/src/config/keys.config.dart';
import 'package:personal_protfolio/src/features/linkedin/presentation/pages/linkedin.page.dart';
import 'package:personal_protfolio/src/features/shell/presentation/pages/portfoliomain.page.dart';
import 'package:personal_protfolio/src/features/twitter/presentation/pages/twitter.page.dart';

import '../features/github/presentation/pages/github.page.dart';
import '../features/splash/presentation/pages/thesplash.page.dart';
import '../features/welcome/presentation/pages/welcome.page.dart';
import '../shared/widgets/error.page.dart';

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
          GoRoute(
            parentNavigatorKey: GlobalKeysConfig.tabNav,
            path: TwitterPage.route,
            pageBuilder: (context, state) {
              return const NoTransitionPage(
                child: TwitterPage(),
              );
            },
          ),
          GoRoute(
            parentNavigatorKey: GlobalKeysConfig.tabNav,
            path: LinkedinPage.route,
            pageBuilder: (context, state) {
              return const NoTransitionPage(
                child: LinkedinPage(),
              );
            },
          ),
          GoRoute(
            parentNavigatorKey: GlobalKeysConfig.tabNav,
            path: GithubPage.route,
            pageBuilder: (context, state) {
              return const NoTransitionPage(
                child: GithubPage(),
              );
            },
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) {
      return ErrorPage(
        errorMessage: state.error.toString(),
      );
    },
  );
}
