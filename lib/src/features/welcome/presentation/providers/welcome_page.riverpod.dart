import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../viewmodels/welcome.viewmodels.dart';
import '../../data/repositories/iwelcome.repository.dart';
import '../../data/repositories/welcome.repository.dart';
import '../viewmodels/greetings_label.viewmodels.dart';

final welcomeRepositoryProvider = Provider<IWelcomeRepository>(
  (ref) {
    return WelcomeRepository(ref);
  },

  /// Replace with MockWelcomeRepository to detach the firebase connection.
);

final welcomeViewModelProvider = Provider<WelcomePageViewModels>(
  (ref) {
    var repository = ref.read(welcomeRepositoryProvider);
    return WelcomePageViewModels(
      ref,
      repository,
    );
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
