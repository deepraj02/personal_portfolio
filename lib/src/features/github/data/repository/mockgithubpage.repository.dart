import '../../../../config/icons.config.dart';
import '../model/githubpage.models.dart';

import 'igithubpage.repository.dart';

class MockGithubRepository implements IGithubPageRepository {
  @override
  Future<GitHubPageModel> getGithubPageData() {
    return Future.delayed(
      const Duration(
        seconds: 2,
      ),
      () {
        return GitHubPageModel(
          icon: PersonalPortfolioIcons.github,
          heading: 'Check Out',
          subHeading: 'On Github',
          url: 'https://github.com/deepraj02',
          title: 'My Repos',
        );
      },
    );
  }
}
