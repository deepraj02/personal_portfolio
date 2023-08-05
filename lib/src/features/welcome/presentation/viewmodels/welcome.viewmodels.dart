import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_protfolio/src/features/welcome/data/repositories/iwelcome.repository.dart';

import '../../data/models/welcome_page.model.dart';
import '../providers/welcome_page.riverpod.dart';

class WelcomePageViewModels {
  final Ref ref;
  final IWelcomeRepository welcomeRepository;

  WelcomePageViewModels(
    this.ref,
    this.welcomeRepository,
  );

  Future<WelcomePageModel> getWelcomePageData() async {
    var welcomePageData = await welcomeRepository.getWelcomePageData();
    ref.read(greetingsRawListProvider.notifier).state =
        welcomePageData.greetings;
    return welcomePageData;
  }
}
