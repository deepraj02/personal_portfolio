import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_protfolio/src/features/twitter/presentation/providers/twitter_page.riverpod.dart';

import '../../../../config/colors_config.dart';

class TwitterPage extends ConsumerWidget {
  static const String route = '/twitter';
  const TwitterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var twitterDataAsync = ref.watch(twitterProvider);
    return twitterDataAsync.when(
      loading: () => const Center(
          child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.white),
      )),
      error: (error, stackTrace) => const Text('error'),
      data: (twitterData) {
        return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                twitterData.icon,
                size: 50,
                color: TheColors.twitterIcon,
              ),
              Text.rich(
                TextSpan(
                    style: const TextStyle(fontSize: 100, color: Colors.white),
                    children: [
                      //const TextSpan(text: "I'm "),
                      TextSpan(
                        text: twitterData.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
                        twitterData.subTitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 40,
                          color: TheColors.twitterPrimary,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        twitterData.subTitle,
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
