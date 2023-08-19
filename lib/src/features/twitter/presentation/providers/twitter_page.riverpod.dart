import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../viewmodels/twitter.viewmodels.dart';
import '../../data/repository/itwitterpage.repository.dart';
import '../../data/repository/twitterpage.repository.dart';

final twitterRepositoryProvider = Provider<ITwitterPageRepository>((ref) {
  return TwitterRepository(ref);
});

final twitterViewModelProvider = Provider<TwitterPageViewModels>((ref) {
  var repository = ref.read(twitterRepositoryProvider);
  return TwitterPageViewModels(ref, repository);
});

final twitterProvider = FutureProvider((ref) {
  var twitterVM = ref.read(twitterViewModelProvider);
  return twitterVM.getTwitterData();
});
