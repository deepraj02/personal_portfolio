import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../helpers/responsive_ui_helper.dart';
import '../../../../shared/widgets/error_widget.dart';
import '../../responsive/welcome_page_responsive.dart';
import '../widgets/greetings_label.dart';

import '../../../../config/colors_config.dart';
import '../providers/welcome_page.riverpod.dart';

class WelcomePage extends ConsumerWidget {
  static const String route = '/welcome';
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var uiConfig = WelcomePageResponsiveConfig
        .responsiveUI[ResponsiveUIHelper.getDeviceType(context)]!;
    var welcomeDataAsync = ref.watch(welcomeProvider);

    return welcomeDataAsync.when(
        loading: () => const Center(
                child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.white),
            )),
        error: (error, stackTrace) =>
            ErrorNotification(message: error.toString()),
        data: (welcomeData) {
          return Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flex(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        direction: uiConfig.headerAxis,
                        children: [
                          Container(
                              width: uiConfig.imageSize,
                              height: uiConfig.imageSize,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: TheColors.welcomePrimary,
                                      width: uiConfig.imageBorderSize),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(welcomeData.imgPath),
                                      fit: BoxFit.cover))),
                          uiConfig.headerGap,
                        ]),
                    const GreetingsLabel(),
                    Text.rich(
                      TextSpan(
                          style: TextStyle(
                              fontSize: uiConfig.titleSize,
                              color: Colors.white),
                          children: [
                            const TextSpan(text: "I'm "),
                            TextSpan(
                                text: welcomeData.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                          ]),
                      textAlign: TextAlign.center,
                    ),
                    Flex(
                        direction: uiConfig.headerAxis,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          uiConfig.subtitleGap,
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(welcomeData.title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: uiConfig.subTitleSize,
                                      color: Colors.white)),
                              uiConfig.headerGap,
                              Text(welcomeData.subTitle,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: uiConfig.subTitleSize,
                                      color:
                                          const Color.fromARGB(255, 0, 0, 0))),
                            ],
                          )
                        ])
                  ]
                      .animate(interval: 100.ms)
                      .slideY(
                          begin: 1,
                          end: 0,
                          duration: 0.5.seconds,
                          curve: Curves.easeInOut)
                      .fadeIn()));
        });
  }
}
