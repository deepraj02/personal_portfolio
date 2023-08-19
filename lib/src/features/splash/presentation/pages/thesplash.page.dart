import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../config/colors_config.dart';
import '../../../../config/keys.config.dart';
import '../../../../shared/widgets/error_widget.dart';
import '../providers/splash_page.riverpod.dart';
import '../widgets/loading.widget.dart';
import '../../../welcome/presentation/pages/welcome.page.dart';

class Splash extends ConsumerWidget {
  static const String route = '/splash';

  const Splash({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var splashFuture = ref.watch(splashPageFutureProvider);
    var loadingMessage = const SplashLoading(
        message: 'Loading an awesome,\nKick-ass Profile...');

    return Scaffold(
        backgroundColor: TheColors.mainBlue,
        body: splashFuture.when(
          loading: () => loadingMessage,
          error: (error, stackTrace) =>
              ErrorNotification(message: error.toString()),
          data: (data) {
            Future.delayed(1.seconds, () {
              GoRouter.of(GlobalKeysConfig.mainNav.currentContext!)
                  .go(WelcomePage.route);
            });

            return loadingMessage;
          },
        ));
  }
}
