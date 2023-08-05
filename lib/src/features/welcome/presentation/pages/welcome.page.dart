import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_protfolio/src/features/welcome/presentation/widgets/greetings_label.dart';

import '../../../../config/colors_config.dart';
import '../providers/welcome_page.riverpod.dart';

class WelcomePage extends ConsumerWidget {
  static const String route = "/welcome";
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var welcomeDataAsync = ref.watch(welcomeProvider);

    return welcomeDataAsync.when(
      loading: () => const Center(
          child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.white),
      )),
      error: (error, stackTrace) => const Text('error'),
      data: (welcomeData) {
        return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: TheColors.welcomePrimary, width: 8),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(welcomeData.imgPath),
                          
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(width: 40),
                ],
              ),
              const GreetingsLabel(),
              Text.rich(
                TextSpan(
                    style: const TextStyle(fontSize: 100, color: Colors.white),
                    children: [
                      const TextSpan(text: "I'm "),
                      TextSpan(
                          text: welcomeData.name,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 20),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        welcomeData.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        welcomeData.subTitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
