import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_protfolio/src/features/welcome/data/repositories/mockwelcome.repository.dart';
import 'package:personal_protfolio/src/features/welcome/presentation/viewmodels/welcome.viewmodels.dart';

import '../../data/repositories/iwelcome.repository.dart';
import '../viewmodels/greetings_label.viewmodels.dart';

final welcomeRepositoryProvider = Provider<IWelcomeRepository>(
  (ref) {
    return MockWelcomeRepository();
  },
);

final welcomeViewModelProvider = Provider<WelcomePageViewModels>(
  (ref) {
    var repository = ref.read(welcomeRepositoryProvider);
    return WelcomePageViewModels(ref, repository);
  },
);

final welcomeProvider = FutureProvider((ref) {
  final welcomeVM = ref.read(welcomeViewModelProvider);
  return welcomeVM.getWelcomePageData();
});

final greetingsRawListProvider = StateProvider<List<String>>((ref) {
  return [];
});

final greetingsViewModelProvider =
    StateNotifierProvider<GreetingsViewModel, String>((ref) {
  var greetings = ref.watch(greetingsRawListProvider);
  return GreetingsViewModel(greetings.first, greetings);
});
