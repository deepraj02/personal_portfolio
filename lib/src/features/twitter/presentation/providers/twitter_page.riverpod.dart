import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_protfolio/src/features/twitter/presentation/viewmodels/twitter.viewmodels.dart';
import '../../data/repository/itwitterpage.repository.dart';
import '../../data/repository/mocktwitterpage.repository.dart';

final twitterRepositoryProvider = Provider<ITwitterPageRepository>((ref) {
  return MockTwitterRepository();
});

final twitterViewModelProvider = Provider<TwitterPageViewModels>((ref) {
  var repository = ref.read(twitterRepositoryProvider);
  return TwitterPageViewModels(ref, repository);
});



