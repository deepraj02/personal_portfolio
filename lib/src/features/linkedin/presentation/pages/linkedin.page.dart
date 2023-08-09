import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_protfolio/src/features/linkedin/presentation/providers/linkedin_page.riverpod.dart';
import 'package:personal_protfolio/src/shared/widgets/error.page.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../config/colors_config.dart';

class LinkedinPage extends ConsumerWidget {
  static const String route = '/linkedin';
  const LinkedinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var linkedinDataAsync = ref.watch(linkedinProvider);
    return linkedinDataAsync.when(
      loading: () => const Center(
          child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.white),
      )),
      error: (error, stackTrace) => const Text('error'),
      data: (linkedinData) {
        return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                linkedinData.icon,
                size: 100,
                color: TheColors.linkedInIcon,
              ).animate(onPlay: (controller) {
                controller.repeat(reverse: true);
              }).scaleXY(
                begin: .8,
                end: 1,
                duration: 1.seconds,
                curve: Curves.easeIn,
              ),
              Text.rich(
                TextSpan(
                    style: const TextStyle(fontSize: 100, color: Colors.white),
                    children: [
                      //const TextSpan(text: "I'm "),
                      TextSpan(
                        text: linkedinData.title,
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
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          color: TheColors.linkedInPrimary,
                          child: GestureDetector(
                            onTap: () async {
                              var myLinkedinUrl = Uri.parse(linkedinData.url);
                              if (!await launchUrl(myLinkedinUrl)) {
                                const ErrorPage(
                                    errorMessage: "Could not Launch URL");
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                linkedinData.handle,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ]
                .animate(
                  interval: 100.ms,
                )
                .slideY(
                  begin: 1,
                  end: 0,
                  duration: 0.5.seconds,
                  curve: Curves.easeInOut,
                )
                .fadeIn(),
          ),
        );
      },
    );
  }
}
