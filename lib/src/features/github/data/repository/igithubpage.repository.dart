import '../model/githubpage.models.dart';

abstract class IGithubPageRepository {
  Future<GitHubPageModel> getGithubPageData();
}
