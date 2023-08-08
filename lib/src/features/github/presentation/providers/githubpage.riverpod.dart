import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repository/mockgithubpage.repository.dart';
import '../../data/repository/igithubpage.repository.dart';

final githubRepositoryProvider = Provider<IGithubPageRepository>((ref) {
  return MockGithubRepository();
});

