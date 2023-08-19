import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../viewmodels/githubpage.viewmodels.dart';
import '../../data/repository/githubpage.repository.dart';
import '../../data/repository/igithubpage.repository.dart';

final githubRepositoryProvider = Provider<IGithubPageRepository>((ref) {
  return GithubRepository(ref);
});

final githubViewModelProvider = Provider<GithubPageViewModels>((ref) {
  var repository = ref.read(githubRepositoryProvider);
  return GithubPageViewModels(ref: ref, githubRepository: repository);
});

final githubProvider = FutureProvider((ref) {
  var githubVM = ref.read(githubViewModelProvider);
  return githubVM.getGithubPageData();
});
