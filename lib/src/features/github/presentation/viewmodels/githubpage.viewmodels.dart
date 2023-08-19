// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/model/githubpage.models.dart';

import '../../data/repository/igithubpage.repository.dart';

class GithubPageViewModels {
  final Ref ref;
  final IGithubPageRepository githubRepository;

  GithubPageViewModels({
    required this.ref,
    required this.githubRepository,
  });

  Future<GitHubPageModel> getGithubPageData() async {
    var githubPageData = await githubRepository.getGithubPageData();
    return githubPageData;
  }
}
